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

size(160);

real anA=15;
real anB=85;

real x=Cos(anB-anA);

pair C=(0,0);
pair A=1.8*dir(anA);
pair B=dir(anB);
pair D=x*unit(A-C);

draw("$c$",A--B,blue);
draw("$a$",B--C,red);
draw("$b$",C--A,lGreen);

draw("$A$",arc(A,A+0.22*unit(B-A),A+0.22*unit(C-A)),red);
draw("$B$",arc(B,B+0.16*unit(C-B),B+0.16*unit(A-B)),lGreen);
draw("$C$",arc(C,C+0.1*unit(A-C),C+0.1*unit(B-C)),blue);

label("$x$",(D+C)/2+0.1(D-B));
draw(Label("$h$",Relative(0.35)),D--B,dashed);

real d=0.07;
draw(D+d*unit(D)--D+d*unit(D)+rotate(90,(0,0))*(d*unit(D))--D+rotate(90,(0,0))*(d*unit(D)));