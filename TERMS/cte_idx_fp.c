/*-----------------------------------------------------------------------

File  : ctr_idx_fp.c

Author: Stephan Schulz (schulz@eprover.org)

Contents
 
  Compute and handle term fingerprints for indexing.

  Copyright 2010 by the author.
  This code is released under the GNU General Public Licence and
  the GNU Lesser General Public License.
  See the file COPYING in the main E directory for details..
  Run "eprover -h" for contact information.

Changes

<1> Wed Feb 24 01:28:18 EET 2010
    New

-----------------------------------------------------------------------*/

#include "cte_idx_fp.h"



/*---------------------------------------------------------------------*/
/*                        Global Variables                             */
/*---------------------------------------------------------------------*/

char* FPIndexNames[] =
{   
   "FP0",
   "FPfp",
   "FP1",
   "FP2",
   "FP3D",
   "FP3W",
   "FP4D",
   "FP4W",
   "FP4M",
   "FP7",
   "FP4X2_2",
   "FP3DFlex",
   "NoIndex",
   NULL
};

static FPIndexFunction fp_index_funs[] =
{
   IndexFP0Create,
   IndexFPfpCreate,
   IndexFP1Create,
   IndexFP2Create,
   IndexFP3DCreate,
   IndexFP3WCreate,
   IndexFP4DCreate,
   IndexFP4WCreate,
   IndexFP4MCreate,
   IndexFP7Create,
   IndexFP4X2_2Create,
   IndexFP3DFlexCreate,
   NULL,
   NULL
};



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
// Function: TermFPSample()
//
//   Sample the term at the position described by the optional
//   arguments (encoding a (-1)-terminated position.
//
// Global Variables: 
//
// Side Effects    : 
//
/----------------------------------------------------------------------*/

FunCode TermFPSample(Term_p term, ...)
{
  va_list ap;
  va_start(ap, term);
  int pos = 0;
  FunCode res = 0;

  for(pos = va_arg(ap, int); pos != -1;  pos = va_arg(ap, int))
  {
     if(TermIsVar(term))
     {
        res = BELOW_VAR;
        break;
     }
     if(pos >= term->arity)
     {
        res = NOT_IN_TERM;
        break;
     }
     term = term->args[pos];
  }
  if(pos == -1)
  {
     res = TermIsVar(term)?ANY_VAR:term->f_code;
  }
  va_end(ap);   

  return res;
}


/*-----------------------------------------------------------------------
//
// Function: TermFPFlexSample()
//
//   Sample the term at the position described by the array at
//   pos. Update pos to point behind the end of the (-1)-terminated
//   position. 
//
// Global Variables: 
//
// Side Effects    : 
//
/----------------------------------------------------------------------*/

FunCode TermFPFlexSample(Term_p term, IntOrP* *seq)
{
  FunCode res = 0;
  long pos;

  while((pos=(*seq)->i_val)!=-1)
  {
     if(TermIsVar(term))
     {
        res = BELOW_VAR;
        break;
     }
     if(pos >= term->arity)
     {
        res = NOT_IN_TERM;
        break;
     }
     term = term->args[pos];
     (*seq)++;
  }
  if(pos == -1)
  {
     res = TermIsVar(term)?ANY_VAR:term->f_code;
  }
  else
  {
     /* Find the end of the position */
     while((pos=(*seq)->i_val)!=-1)
     {
        (*seq)++;
     }
  }
  /* We want to point beyond the end */
  (*seq)++;
  return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP0Create()
//
//   Create a dummy fingerprint structure.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP0Create(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*1);

   res[0] = 1;

   return res;
}

/*-----------------------------------------------------------------------
//
// Function: IndexFPfpCreate()
//
//   Create a fingerprint structure using an abstraction to just avoid
//   function/predicate unifications/matches.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFPfpCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*2);

   res[0] = 2;
   res[1] = TermFPSample(t, -1);
   if(res[1] > 0)
   {
      res[1]=TermCellQueryProp((t), TPPredPos)?1:2;
   }

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP1Create()
//
//   Create a fingerprint structure representing top symbol hashing.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP1Create(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*2);

   res[0] = 2;
   res[1] = TermFPSample(t, -1);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP2Create()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP2Create(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*3);

   res[0] = 3;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP3DCreate()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0, 0.0.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP3DCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*4);

   res[0] = 4;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 0, 0, -1);

   return res;
}



/*-----------------------------------------------------------------------
//
// Function: IndexFP3WCreate()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0, 1.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP3WCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*4);

   res[0] = 4;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 1, -1);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP4DCreate()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0, 0.0, 0.0.0
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP4DCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*5);

   res[0] = 5;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 0, 0, -1);
   res[4] = TermFPSample(t, 0, 0,0, -1);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP4WCreate()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0, 1, 2
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP4WCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*5);

   res[0] = 5;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 1, -1);
   res[4] = TermFPSample(t, 2, -1);

   return res;
}



/*-----------------------------------------------------------------------
//
// Function: IndexFP4MCreate()
//
//   Create a fingerprint structure representing sampling at epsilon,
//   0, 1, 0.0
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP4MCreate(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*5);

   res[0] = 5;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 1, -1);
   res[4] = TermFPSample(t, 0, 0, -1);

   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP7Create()
//
//   Create a fingerprint structure with samples at positions epsilon,
//   0, 1, 0.0, 01, 1.0, 1.1 (using E's internal numbering). 
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP7Create(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*8);

   res[0] = 8;
   res[1] = TermFPSample(t, -1);
   res[2] = TermFPSample(t, 0, -1);
   res[3] = TermFPSample(t, 1, -1);
   res[4] = TermFPSample(t, 0, 0, -1);
   res[5] = TermFPSample(t, 0, 1, -1);
   res[6] = TermFPSample(t, 1, 0, -1);
   res[7] = TermFPSample(t, 1, 1, -1);

   return res;
}



/*-----------------------------------------------------------------------
//
// Function: IndexFP4X2_2Create()
//
//   Create a fingerprint structure with samples at positions as
//   specified below.
//
// Global Variables: -
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFP4X2_2Create(Term_p t)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*17);

   res[ 0] = 17;
   res[ 1] = TermFPSample(t, -1);
   res[ 2] = TermFPSample(t, 0, -1);
   res[ 3] = TermFPSample(t, 1, -1);
   res[ 4] = TermFPSample(t, 2, -1);
   res[ 5] = TermFPSample(t, 3, -1);

   res[ 6] = TermFPSample(t, 0, 0, -1);
   res[ 7] = TermFPSample(t, 0, 1, -1);
   res[ 8] = TermFPSample(t, 0, 2, -1);

   res[9] = TermFPSample(t, 1, 0, -1);
   res[10] = TermFPSample(t, 1, 1, -1);
   res[11] = TermFPSample(t, 1, 2, -1);

   res[12] = TermFPSample(t, 2, 0, -1);
   res[13] = TermFPSample(t, 2, 1, -1);
   res[14] = TermFPSample(t, 2, 2, -1);

   res[15] = TermFPSample(t, 0, 0, 0, -1);
   res[16] = TermFPSample(t, 1, 0, 0, -1);
   
   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFPFlexCreate()
//
//   Create a fingerprint of len elments, with the positions in pos.
//
// Global Variables: 
//
// Side Effects    : 
//
/----------------------------------------------------------------------*/

IndexFP_p IndexFPFlexCreate(Term_p t, PStack_p pos, int len)
{
   IndexFP_p res = SizeMalloc(sizeof(FunCode)*(len+1));
   IntOrP *p = PStackBaseAddress(pos);
   int     i;

   res[0] = (len+1);
   
   i=1;
   while((*p).i_val != -2)
   {
      res[i] = TermFPFlexSample(t, &p);
      i++;
   }
   
   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFP3DFlexCreate()
//
//   Testfunction, equivalent to IndexFP3DCreate()
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/
   
IndexFP_p IndexFP3DFlexCreate(Term_p t)
{
   IndexFP_p res;
   PStack_p pos = PStackAlloc();
   
   PStackPushInt(pos, -1);

   PStackPushInt(pos, 0);
   PStackPushInt(pos, -1);

   PStackPushInt(pos, 0);
   PStackPushInt(pos, 0);
   PStackPushInt(pos, -1);

   PStackPushInt(pos, -2);

   res = IndexFPFlexCreate(t, pos, 3);
   
   PStackFree(pos);
   return res;
}


/*-----------------------------------------------------------------------
//
// Function: IndexFPFree()
//
//   Free an IndexFP data-structure (i.e. a self-describing FunCode
//   array). 
//
// Global Variables: -
//
// Side Effects    : Memory operations
//
/----------------------------------------------------------------------*/

void IndexFPFree(IndexFP_p junk)
{
   SizeFree(junk, sizeof(FunCode)*junk[0]);
}


/*-----------------------------------------------------------------------
//
// Function: GetFPIndexFunction()
//
//   Given a name, return the corresponding index function, or NULL. 
//
// Global Variables: fp_index_names, fp_index_funs
//
// Side Effects    : -
//
/----------------------------------------------------------------------*/

FPIndexFunction GetFPIndexFunction(char* name)
{
   int i;
   
   for(i=0; FPIndexNames[i]; i++)
   {
      if(strcmp(FPIndexNames[i], name)==0)
      {
         return fp_index_funs[i];
      }
   }  
   return NULL;
}



/*-----------------------------------------------------------------------
//
// Function: IndexFPPrint()
//
//   Print a term fingerprint.
//
// Global Variables: -
//
// Side Effects    : Output
//
/----------------------------------------------------------------------*/

void IndexFPPrint(FILE* out, IndexFP_p fp)
{
   int i, limit=fp[0];
   
   if(limit>=2)
   {
      fprintf(stdout, "<%ld", fp[1]);
      for(i=2; i<limit; i++)
      {
         fprintf(stdout, ",%ld", fp[i]);
      }      
      fprintf(stdout, ">");
   }   
   else
   {
      fprintf(stdout, "<>");
   }
}


/*---------------------------------------------------------------------*/
/*                        End of File                                  */
/*---------------------------------------------------------------------*/

