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

real M=0.7;
real a=0.25;
real b=0.52;

pair F=(0,a);
path d=(-M,-a)--(M,-a);
real f(real x){return x^2;}
path p=graph(f,-M,M);

draw(p,Blue+linewidth(1));
draw(d,dashed);
dot("$F$",F,NW);
label("$d$",(-M,-a),W);
label("$P$",(b,f(b)),N);
label("$Q$",(b,-a),S);

draw(F--(b,f(b))--(b,-a),StickIntervalMarker(2,1,lGreen,dotframe(red)));
draw(F--(-b/2,f(-b/2))--(-b/2,-a),StickIntervalMarker(2,2,Magenta,dotframe(red)));

draw((b+0.05,-a)--(b+0.05,-a+0.05)--(b,-a+0.05));
draw((-b/2+0.05,-a)--(-b/2+0.05,-a+0.05)--(-b/2,-a+0.05));
