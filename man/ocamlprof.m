\" $Id: ocamlprof.m,v 1.6 2008-09-15 14:25:42 doligez Exp $
.TH OCAMLPROF 1

.SH NAME
ocamlprof \- The Objective Caml profiler

.SH SYNOPSIS
.B ocamlprof
[
.BI \-f \ dump-file
]
[
.BI \-F \ text
]
.I filename ...

.SH DESCRIPTION
The
.B ocamlprof
command prints execution counts gathered during the execution of a
Objective Caml program instrumented with
.BR ocamlcp (1).

It produces a source listing of the program modules given as arguments
where execution counts have been inserted as comments. For instance,

.B ocamlprof foo.ml

prints the source code for the foo module, with comments indicating
how many times the functions in this module have been called. Naturally,
this information is accurate only if the source file has not been modified
since the profiling execution took place.

.SH OPTIONS

.TP
.BI \-f \ dumpfile
Specifies an alternate dump file of profiling information.
.TP
.BI \-F \ string
Specifies an additional string to be output with profiling information.
By default,
.BR ocamlprof (1)
will annotate programs with comments of the form
.BI (* \ n \ *)
where
.I n
is the counter value for a profiling point. With option
.BI \-F \ s
the annotation will be
.BI (* \ sn \ *)
.TP
.BI \-impl \ filename
Compile the file
.I filename
as an implementation file, even if its extension is not .ml.
.TP
.BI \-intf \ filename
Compile the file
.I filename
as an interface file, even if its extension is not .mli.
.TP
.B \-version
Print the version number of ocamlprof and exit.
.TP
.BR \-help \ or \ \-\-help
Display a short usage summary and exit.

.SH SEE ALSO
.BR ocamlcp (1).
.br
.IR "The Objective Caml user's manual" ,
chapter "Profiling".
