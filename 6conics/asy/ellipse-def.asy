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

size(0,120);

real a=1.2;
real b=1;
real c=sqrt(a^2-b^2);
real e=sqrt(1-b^2/a^2);

pair F=(c,0);
pair G=(-c,0);
pair D=(a/e,0);
pair X1=(a,0);
pair X2=(-a,0);

pair PP(real t){return (a*cos(t),b*sin(t));}

real m=1.8*pi/6;
pair P=PP(pi/4);
pair Q=(a/e,P.y);

draw(graph(PP,-m,m),Blue+linewidth(1));
draw(graph(PP,pi-0.5m,pi+0.5m),Blue+linewidth(1));
draw(graph(PP,-1.2m,-m),Blue+dashed);
draw(graph(PP,pi-m,pi-0.5m),Blue+dashed);
draw(graph(PP,1.2m,m),Blue+dashed);
draw(graph(PP,pi+m,pi+0.5m),Blue+dashed);


draw(Label("$d$",Relative(0)),(a/e,-0.6)--(a/e,1));
draw(shift(Q)*box((-0.1,-0.1),(0,0)));

draw(Label("$Q$",Relative(0)),Q--P,StickIntervalMarker(1,2,Magenta,dotframe(red)));
draw(F--P,StickIntervalMarker(1,1,lGreen,dotframe(red)));

//draw("$q$",X2--F);
//draw("$et$",F--X1);
//draw("$t$",X1--D);

dot(Label("$P$",black),P,NE,red);
dot(Label("$F$",black),F,NW,red);
//dot(Label("$D$",black),D,E,red);
//dot(Label("$X_1$",black),X1,NE,red);
//dot(Label("$X_2$",black),X2,W,red);

xaxis("$x$",-1.15a,1.2a/e,red);
yaxis("$y$",red);
xtick(Label("$-a$",align=SW),-a,S,red);
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$ae$",align=S),a*e,S,red);
xtick(Label("$\frac ae$",align=SE),a/e,S,red);