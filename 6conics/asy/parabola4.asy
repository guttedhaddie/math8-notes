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

size(180);

real a=0.4;

real f(real x){return x^2/(4*a);}

draw(graph(f,-2,2),Blue+linewidth(1));

xaxis("$x$",-2,2,red);
yaxis("$y$",-2a,6a,red);

draw(Label("$d$",Relative(0)),(-1.5,-a)--(2,-a),dashed);
draw((0,a)--(1.3,f(1.3))--(1.3,-a),StickIntervalMarker(2,2,lGreen));
dot(Label("$F(0,a)$",black),(0,a),NW,red);
dot(Label("$P(x,y)$",black),(1.3,f(1.3)),NW,red);
dot(Label("$Q(x,-a)$",black),(1.3,-a),S,red);

