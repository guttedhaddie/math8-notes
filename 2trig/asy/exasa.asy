settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;
import markers;

size(120);

real rot=80;

pair A=(0,0);
pair B=5*dir(rot);
pair C=intersectionpoint(A--A+5*dir(rot+40),B--B+5*dir(rot+115));

draw("$5$",A--B,blue);
draw("$a$",B--C,red);
draw("$b$",C--A,lGreen);

draw("40\textdegree",arc(A,A+0.9*unit(B-A),A+0.9*unit(C-A)),red);
draw("65\textdegree\negthickspace",arc(B,B+0.4*unit(C-B),B+0.4*unit(A-B)),lGreen);
draw("$C$",arc(C,C+0.4*unit(A-C),C+0.4*unit(B-C)),blue);

