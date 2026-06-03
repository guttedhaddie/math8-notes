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

size(120,0);

real k=1;
real e=0.8;

pair F=(0,0);
pair K=(k,0);
real d=k+k/e;


real r(real th){return k*(1+e)/(1+e*cos(th));}

draw(polargraph(r,-1.8,1.8),Blue+linewidth(1));

real t=pi/3;
pair P=r(t)*expi(t);

draw(Label("$d$",Relative(0)),(d,-1.8)--(d,2),dashed);
draw("$r$",P--F);
draw("$\frac re$",P--(d,P.y));

xaxis("$x$",-0.5,1.15d,red);
yaxis("$y$",red);

draw(Label("$\frac ke$",align=S),brace((d-0.02,-0.35),(k+0.02,-0.35)));
draw(Label("$k$",align=S),brace((k-0.02,-0.35),(0.02,-0.35)));

draw("$\theta$",arc((0,0),0.2,0,t*180/pi),ArcArrow);
dot(Label("$P$",black),P,NE,red);
dot(Label("$K$",black),K,SE,red);
dot(Label("$F$",black),F,SW,red);
