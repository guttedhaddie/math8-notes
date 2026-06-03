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

size(140,0);

real a=3;
real b=2;
real c=sqrt(a^2-b^2);
real e=sqrt(1-b^2/a^2);
pair sh=(2,1);

pair F=(0,c)+sh;
pair G=(0,-c)+sh;
pair D=(0,a/e)+sh;
pair X1=(0,a)+sh;
pair X2=(0,-a)+sh;

pair PP(real t){return sh+(b*sin(t),a*cos(t));}

pair P=PP(pi/4);
pair Q=(P.x,sh.y+a/e);
pair P2=PP(1.2pi);
pair Q2=(P2.x,sh.y-a/e);

draw(shift(sh)*xscale(b)*yscale(a)*unitcircle,Blue+linewidth(1));

draw(Label("$d$",Relative(1)),(0,sh.y+a/e)--sh+(1.1b,a/e),dashed);
draw(Label("$d'$",Relative(1)),(0,sh.y+-a/e)--sh+(1.1b,-a/e),dashed);
draw(shift(Q)*box((-0.15,-0.15),(0,0)));
draw(shift(Q2)*box((-0.15,0.15),(0,0)));

draw(Label("$Q$",Relative(0)),Q--P,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(F--P,StickIntervalMarker(1,1,lGreen,dotframe(red)));

draw(Label("$Q'$",Relative(0)),Q2--P2,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(G--P2,StickIntervalMarker(1,1,lGreen,dotframe(red)));


dot(Label("$P$",black),P,NE,red);
dot(Label("$F$",black),F,NW,red);
dot(Label("$P'$",black),P2,SW,red);
dot(Label("$G$",black),G,NW,red);

xaxis(0,4.9,red,RightTicks(new real[]{2,4},new real[]{1,3,5}));
yaxis(red,LeftTicks(new real[]{-2,0,2,4,6},new real[]{-3,-1,1,3,5}));


labelx("$x$",4.7,S,red);
labely("$y$",5.4,2W,red);
draw(Label("$Y$",Relative(1)),(0,sh.y)--sh+(1.2b,0),BlueViolet+linewidth(0.3),Arrow);
draw(Label("$X$",Relative(1)),sh+(0,-1.15a)--sh+(0,1.15a),BlueViolet+linewidth(0.3),Arrow);


