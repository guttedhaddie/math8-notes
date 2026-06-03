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

size(200,0);

real a=1.5;
real b=1;
real c=sqrt(a^2-b^2);
real e=sqrt(1-b^2/a^2);

pair F=(c,0);
pair G=(-c,0);
pair D=(a/e,0);
pair X1=(a,0);
pair X2=(-a,0);

pair PP(real t){return (a*cos(t),b*sin(t));}

pair P=PP(0.22pi);
pair Q=(a/e,P.y);
pair P2=P;
pair Q2=(-a/e,P2.y);

draw(xscale(a)*yscale(b)*unitcircle,Blue+linewidth(1));

draw(Label("$d$",Relative(1)),(a/e,0)--(a/e,1.1b),dashed);
draw(Label("$d'$",Relative(1)),(-a/e,0)--(-a/e,1.1b),dashed);
draw(shift(Q)*box((-0.1,-0.1),(0,0)));
draw(shift(Q2)*box((0.1,-0.1),(0,0)));

draw(Label("$Q$",Relative(0)),Q--P,StickIntervalMarker(1,2,Brown,dotframe(red)));
draw(F--P,StickIntervalMarker(1,1,Brown,dotframe(red)));

draw(Label("$Q'$",Relative(0)),Q2--P2,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(G--P2,StickIntervalMarker(1,1,Magenta,dotframe(red)));


dot(Label("$P$",black),P,NE,red);
dot(Label("$F$",black),F,S,red);
dot(Label("$G$",black),G,S,red);

xaxis("$x$",red);
yaxis("$y$",-1.1b,1.4b,red);
xtick(Label("$-a$",align=dir(245)),-a,S,red);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$\frac ae$",align=S),a/e,S,red);
xtick(Label("$-\frac ae$",align=S),-a/e,S,red);