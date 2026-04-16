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
pen lgreen=rgb("00a000");
import graph;


size(140,130,IgnoreAspect);

real f(real x){return -3x^2+12x+4;}

draw(graph(f,-0.5,4.5),Blue+linewidth(1));

xaxis(-1,5,Red,RightTicks(new real[]{-1,0,1,3,4}));
yaxis("$y$",0,17,Red,LeftTicks(new real[]{4,8,12}));

dot((2,16),lgreen);
xtick(Label("2",align=S),2,S,lgreen);
ytick(Label("16",align=W),16,W,Magenta);

labelx("$x$",4.8,S,Red);