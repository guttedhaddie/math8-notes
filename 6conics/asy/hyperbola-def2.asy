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

size(0,150);

real a=1;
real b=1.35;
real c=sqrt(a^2+b^2);
real e=sqrt(1+b^2/a^2);

pair F=(c,0);
pair G=(-c,0);
pair D=(a/e,0);
pair X1=(a,0);
pair X2=(-a,0);

pair PP(real t){return (a*cosh(t),b*sinh(t));}
pair rPP(real t){return (-a*cosh(t),b*sinh(t));}

real m=1.75*pi/6;
pair P=PP(-1.25pi/6);
pair Q=(a/e,P.y);
pair P2=rPP(0.23pi);
pair Q2=(-a/e,P2.y);

draw((-1.1a,-1.1b)--(1.1a,1.1b),Brown+dashed);
draw((-1.1a,1.1b)--(1.1a,-1.1b),Brown+dashed);

draw(graph(PP,-m,m),Blue+linewidth(1));
draw(graph(rPP,-m,m),Blue+linewidth(1));

draw(Label("$d$",Relative(0)),(a/e,-1.25)--(a/e,1.6),dashed);
draw(Label("$d'$",Relative(0)),(-a/e,-1.25)--(-a/e,1.6),dashed);
draw(shift(Q)*box((0.1,-0.1),(0,0)));
draw(shift(Q2)*box((-0.1,-0.1),(0,0)));

draw(Label("$Q$",Relative(0)),Q--P,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(F--P,StickIntervalMarker(1,1,lGreen,dotframe(red)));
draw(Label("$Q'$",Relative(0)),Q2--P2,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(G--P2,StickIntervalMarker(1,1,lGreen,dotframe(red)));

dot(Label("$P$",black),P,E,red);
dot(Label("$F$",black),F,NE,red);
dot(Label("$G$",black),G,NW,red);

xaxis("$x$",red);
yaxis("$y$",red);
ytick(Label("$b$",align=W),b,W,red);
ytick(Label("$-b$",align=W),-b,W,red);
xtick(Label("$-a$",align=S),-a,S,red);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$ae$",align=S),a*e,S,red);
xtick(Label("$\frac ae$",align=SW),a/e,S,red);
xtick(Label("$-ae$",align=S),-a*e,S,red);
xtick(Label("$-\frac ae$",align=dir(300)),-a/e,S,red);