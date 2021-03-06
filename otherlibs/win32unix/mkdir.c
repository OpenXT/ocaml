/***********************************************************************/
/*                                                                     */
/*                           Objective Caml                            */
/*                                                                     */
/*  Xavier Leroy and Pascal Cuoq, projet Cristal, INRIA Rocquencourt   */
/*                                                                     */
/*  Copyright 1996 Institut National de Recherche en Informatique et   */
/*  en Automatique.  All rights reserved.  This file is distributed    */
/*  under the terms of the GNU Library General Public License, with    */
/*  the special exception on linking described in file ../../LICENSE.  */
/*                                                                     */
/***********************************************************************/

/* $Id: mkdir.c,v 1.5 2001-12-07 13:40:45 xleroy Exp $ */

#include <mlvalues.h>
#include "unixsupport.h"

CAMLprim value unix_mkdir(path, perm)
     value path, perm;
{
  if (_mkdir(String_val(path)) == -1) uerror("mkdir", path);
  return Val_unit;
}
