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

size(160,0);

real a=1.5;
real b=1;
real c=sqrt(a^2-b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cos(t),b*sin(t));}

draw(graph(P,0,2pi),Blue+linewidth(1));

real tt=0.45pi;
pair PP=P(tt);
real s=length(F-PP);
pair Q=PP+s*unit(PP-G);
pair TT=(-a*sin(tt),b*cos(tt));
pair R=PP-0.8*TT;
draw(PP-TT--PP+TT);

draw(G--R,dashed);

draw(F--PP--Q,StickIntervalMarker(2,1,Brown,dotframe(red)));
draw(G--PP,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(Q--R--F,StickIntervalMarker(2,3,lGreen,dotframe(red)));

draw(arc(PP,PP+0.2*(F-PP),PP+0.2*(Q-PP)),StickIntervalMarker(2,1,lGreen));
draw(arc(PP,PP-0.25*unit(R-PP),PP-0.2*unit(Q-PP)),StickIntervalMarker(1,1,lGreen));

label("$P$",PP,N);
label("$Q$",Q,E);
label("$R$",R,NE);
label("$F$",F,SW);
label("$G$",G,SE);
label("$\ell$",PP+1.1TT);

