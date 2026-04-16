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


size(120,180,IgnoreAspect);

real f(real x){return x^2-1;}
real g(real x){return sqrt(x+1);}
real h(real x){return -sqrt(x+1);}

path p=graph(f,-3.2,3.2);
draw(graph(f,0,3.1),Blue+linewidth(1));
draw(graph(f,-3.1,0),Brown+linewidth(1));

xaxis(-3.2,3.2,red,RightTicks(new real[]{-4,-2,2,4},new real[]{-3,-1,1,3}));
yaxis(-3.2,red,LeftTicks(new real[]{4,8,12,16},new real[]{-2,2,6,10,14}));

real x=2.4;
draw((x,0)--(x,f(x)),dashed+lGreen,Arrow(Relative(0.5)));
draw(Label("$f$",align=S,Relative(0.5)),(x,f(x))--(0,f(x)),dashed+lGreen,Arrow(Relative(0.5)));

real y=6.7;
draw(Label("$f^{-1}$?",align=N,Relative(0.6)),(0,y)--(g(y),y),dashed+Magenta,Arrow(Relative(0.5)));
draw((g(y),y)--(g(y),0),dashed+Magenta,Arrow(Relative(0.5)));
draw(Label("$f^{-1}$?",align=N,Relative(0.4)),(-1,y)--(h(y),y),dashed+Magenta,Arrow(Relative(0.4)));
draw((h(y),y)--(h(y),0),dashed+Magenta,Arrow(Relative(0.5)));

//labelx("$x$",x,lGreen);
xtick(Label("$x$",align=S),x,S,lGreen);
//labely("$y$",y,W,Magenta);
ytick(Label("$y$",align=W),y,W,Magenta);


draw(Label("$f^{-1}$?",align=S,Relative(0.6)),(0,-1.9)--(2.5,-1.9),dashed+BlueViolet,Arrow(Relative(0.6)));

//labely("$y$",-1.9,W,Purple);
ytick(Label("$y$",align=W),-1.9,W,BlueViolet);


