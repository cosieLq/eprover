/*-----------------------------------------------------------------------

File  : ccl_formulae.c

Author: Stephan Schulz

Contents

  Code for the full first order datatype.

  Copyright 2003 by the author.
  This code is released under the GNU General Public Licence.
  See the file COPYING in the main CLIB directory for details.
  Run "eprover -h" for contact information.

Changes

<1> Wed Nov  5 10:18:51 GMT 2003
    New

-----------------------------------------------------------------------*/

#include "ccl_formulae.h"



/*---------------------------------------------------------------------*/
/*                        Global Variables                             */
/*---------------------------------------------------------------------*/


/*---------------------------------------------------------------------*/
/*                      Forward Declarations                           */
/*---------------------------------------------------------------------*/


/*---------------------------------------------------------------------*/
/*                         Internal Functions                          */
/*---------------------------------------------------------------------*/



/*---------------------------------------------------------------------*/
/*                         Exported Functions                          */
/*---------------------------------------------------------------------*/


/*-----------------------------------------------------------------------
//
// Function: FormulaFree()
//
//   Free a formula and its subformulae. Does free the real literals,
//   but not terms or variables, which are supposed to be shared.
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/

void FormulaFree(Formula_p form)
{
   assert(form);
   assert(form->ref_count>0);

   form->ref_count--;
   if(form->ref_count)
   {
      return;
   }
   if(FormulaIsLiteral(form))
   {
      EqnFree(form->special.literal);
   }
   else
   {
      if(FormulaHasSubForm1(form))
      {
         FormulaFree(form->arg1);
      }
      if(FormulaHasSubForm2(form))
      {
         FormulaFree(form->arg2);
      }    
   }
   FormulaCellFree(form);
}


/*-----------------------------------------------------------------------
//
// Function: FormulaOpAlloc()
//
//   Allocate a formula given two subformulas (the second one may be
//   NULL) and an operator.
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/

Formula_p FormulaOpAlloc(FOFOperatorType op, Formula_p arg1, Formula_p arg2)
{
   Formula_p res = FormulaCellAlloc();
   
   assert(OpIsUnary(op)||OpIsBinary(op));
   assert(EQUIV(OpIsBinary(op),!arg2));

   res->op = op;
   res->special.var = NULL;
   res->arg1 = FormulaGetRef(arg1);
   res->arg2 = FormulaGetRef(arg2);
   res->polarity = 0;

   return res;          
}


/*-----------------------------------------------------------------------
//
// Function: FormulaLitAlloc()
//
//   Allocate a literal formula.
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/

Formula_p FormulaLitAlloc(Eqn_p literal)
{
   Formula_p res = FormulaCellAlloc();
   
   assert(literal);

   res->op = OpIsLit;
   res->special.literal =literal;
   res->arg1 = NULL;
   res->arg2 = NULL;
   res->polarity = 0;

   return res;          

}


/*-----------------------------------------------------------------------
//
// Function: FormulaQuantorAlloc()
//
//   Allocate a formula with a quantor.
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/

Formula_p FormulaQuantorAlloc(FOFOperatorType quantor, Term_p var, Formula_p arg1)
{
   Formula_p res = FormulaCellAlloc();
   
   assert(OpIsQuantor(quantor));
   assert(var);
   assert(TermIsVar(var));
   assert(arg1);

   res->op = quantor;
   res->special.var = var;
   res->arg1 = FormulaGetRef(arg1);
   res->arg2 = NULL;
   res->polarity = 0;

   return res;
}   

/*-----------------------------------------------------------------------
//
// Function: FormulaTPTPPrint()
//
//   Print a formula in TPTP/TSTP format.
//
// Global Variables: 
//
// Side Effects    : 
//
/----------------------------------------------------------------------*/

void FormulaTPTPPrint(FILE* out, Formula_p form, bool fullterms)
{
   assert(form);

   if(FormulaIsLiteral(form))
   {
      EqnTSTPPrint(out, form->special.literal, fullterms);
   }
   else if(FormulaIsQuantified(form))
   {
      switch(form->op)
      {
      case OpQEx:
            fputs("![", out);
            break;
      case OpQAll:
            fputs("?[", out);
            break;
      default:
            assert(false && "Wrong operator");
      }
      TermPrint(out, form->special.var, NULL, DEREF_NEVER);
      fputs("]:", out);
      FormulaTPTPPrint(out, form->arg1, fullterms);
   }
   else if(FormulaIsUnary(form))
   {
      assert(form->op == OpUNot);
      fputs("~(", out);
      FormulaTPTPPrint(out, form->arg1, fullterms);
      fputs(")", out);
   }
   else
   {
      char* oprep;

      assert(FormulaIsBinary(form));
      fputs("(", out);
      FormulaTPTPPrint(out, form->arg1, fullterms);
      switch(form->op)
      {
      case OpBAnd:
            oprep = "&";
            break;
      case OpBOr:
            oprep = "|";
            break;
      case OpBImpl:
            oprep = "=>";
            break;
      case OpBEquiv:
            oprep = "<=>";
            break;
      case OpBNand:
            oprep = "~&";
            break;
      case OpBNor:
            oprep = "~|";           
            break;
      case OpBNImpl:
            oprep = "<=";           
            break;
      case OpBXor:
            oprep = "<~>";
            break;            
      default:
            assert(false && "Wrong operator");
      }
      fputs(oprep, out);
      FormulaTPTPPrint(out, form->arg2, fullterms);      
      fputs(")", out);      
   }   
}


/*-----------------------------------------------------------------------
//
// Function: tptp_operator_parse()
//
//   Parse an return a TPTP quantor. Rather trivial ;-)
//
// Global Variables: -
//
// Side Effects    : Input
//
/----------------------------------------------------------------------*/

FOFOperatorType tptp_operator_parse(Scanner_p in)
{
   FOFOperatorType res;

   CheckInpTok(in, TildeSign|Ampersand|Pipe|EqualSign|LesserSign);
   if(TestInpTok(in, TildeSign))
   {
      NextToken(in);
      CheckInpTokNoSkip(in, Ampersand|Pipe);
      if(TestInpTok(in, Ampersand))
      {
         res = OpBNand;         
      }
      else
      {
         res = OpBNor;
      }
      NextToken(in);
   }
   else
   {
      CheckInpTok(in, Ampersand|Pipe|EqualSign|LesserSign);
      if(TestInpTok(in, Ampersand))
      {
         res = OpBAnd;
         NextToken(in);
            
      }
      else if(TestInpTok(in, Pipe))
      {
         res = OpBOr;
         NextToken(in);
      }
      else if(TestInpTok(in, EqualSign))
      {
         NextToken(in);
         CheckInpTokNoSkip(in, GreaterSign);
         res = OpBImpl;
         NextToken(in);
      }
      else
      {
         AcceptInpTok(in, LesserSign);
         if(TestInpTok(in, TildeSign))
         {
            AcceptInpTokNoSkip(in, TildeSign);
            AcceptInpTokNoSkip(in, GreaterSign);
            res = OpBXor;
         }
         else
         {
            AcceptInpTokNoSkip(in, EqualSign);
            res = OpBImpl;
            if(TestInpTok(in, GreaterSign))
            {            
               AcceptInpTokNoSkip(in, GreaterSign);
               res = OpBEquiv;
            }
         }
      }
   }
   return res;
}


/*-----------------------------------------------------------------------
//
// Function: tptp_quantor_parse()
//
//   Parse an return a TPTP quantor. Rather trivial ;-)
//
// Global Variables: -
//
// Side Effects    : Input
//
/----------------------------------------------------------------------*/

FOFOperatorType tptp_quantor_parse(Scanner_p in)
{
   FOFOperatorType res;

   CheckInpTok(in, AllQuantor|ExistQuantor);
   if(TestInpTok(in, ExistQuantor))
   {
      res = OpQEx;
   }
   else
   {
      res = OpQAll;      
   }
   NextToken(in);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: quantified_form_tptp_parse()
//
//   Parse a quantified TPTP/TSTP formula. At this point, the quantor
//   has already been read (and is passed into the function), and we
//   are at the first variable.
//
// Global Variables: -
//
// Side Effects    : Input, memory operations
//
/----------------------------------------------------------------------*/

Formula_p quantified_form_tptp_parse(Scanner_p in, 
                                     TB_p terms, 
                                     FOFOperatorType op)
{
   
}


/*-----------------------------------------------------------------------
//
// Function: elem_form_tptp_parse()
//
//   Parse an elementary formula in TPTP/TSTP format.
//
// Global Variables: -
//
// Side Effects    : I/O
//
/----------------------------------------------------------------------*/

Formula_p elem_form_tptp_parse(Scanner_p in, TB_p terms)
{
   Formula_p res, tmp;
   
   if(TestInpTok(in, AllQuantor|ExistQuantor))
   {
      FOFOperatorType quantor;
      quantor = tptp_quantor_parse(in);
      AcceptInpTok(in, OpenSquare);
      res = quantified_form_tptp_parse(in, terms, quantor);
   }
   else if(TestInpTok(in, OpenBracket))
   {
      AcceptInpTok(in, OpenBracket);
      res = FormulaTPTPParse(in, terms);
      AcceptInpTok(in, CloseBracket);
   }
   else if(TestInpTok(in, TildeSign))
   {
      AcceptInpTok(in, TildeSign);
      tmp = elem_form_tptp_parse(in, terms);
      res = FormulaOpAlloc(OpUNot, tmp, NULL);
   }
   else 
   {
      Eqn_p lit;
      lit = EqnParse(in, terms);
      res = FormulaLitAlloc(lit);
   }
   return res;
}

/*-----------------------------------------------------------------------
//
// Function: FormulaTPTPParse()
//
//   Parse a formula in TSTP/TPTP formula.
//
// Global Variables: -
//
// Side Effects    : I/O, memory operations
//
/----------------------------------------------------------------------*/

Formula_p FormulaTPTPParse(Scanner_p in, TB_p terms)
{
   Formula_p      f1, f2, res;
   FOFOperatorType op;
   f1 = elem_form_tptp_parse(in, terms);   
   if(TestInpTok(in, Ampersand|LesserSign|EqualSign|Pipe|TildeSign))
   {
      op = tptp_operator_parse(in);
      f2 = FormulaTPTPParse(in, terms);
      res = FormulaOpAlloc(op, f1, f2);
   }
   else
   {
      res = f1;
   }
   return res;
}




/*---------------------------------------------------------------------*/
/*                        End of File                                  */
/*---------------------------------------------------------------------*/


