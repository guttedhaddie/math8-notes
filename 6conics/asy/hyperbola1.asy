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

real a=1.1;
real b=1;
real c=sqrt(a^2+b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cosh(t),b*sinh(t));}
pair PP(real t){return (-a*cosh(t),b*sinh(t));}

draw(graph(P,-1.2,1.2),Blue+linewidth(1));
draw(graph(PP,-1.2,1.2),Blue+linewidth(1));


draw(F--P(0.9pi/3),StickIntervalMarker(1,1,lGreen,dotframe(red)));
draw(G--P(0.9pi/3),StickIntervalMarker(1,2,Magenta,dotframe(red)));

dot(Label("$P$",black),P(0.9pi/3),NW,red);


dot(Label("$G$",black),G,SW,red);
dot(Label("$F$",black),F,SE,red);

