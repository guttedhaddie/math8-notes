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


size(110,0);

real f(real x){return 2x;}
real g(real x){return x/2;}

draw((-0.2,f(-0.2))--(2.1,f(2.1)),blue+linewidth(1));


xaxis(0,2.4,red,RightTicks(Ticks=new real[]{0,1,2},ticks=new real[]{0.5,1.5}));
yaxis(0,4.4,red,LeftTicks(Ticks=new real[]{0,2,4},ticks=new real[]{1,3}));

real x=0.7;
draw((x,0)--(x,f(x)),dashed+lGreen,Arrow(Relative(0.5)));
draw("$f$",(x,f(x))--(0,f(x)),dashed+lGreen,Arrow(Relative(0.5)));

real y=3.3;
draw(Label("$f^{-1}$",align=N,Relative(0.6)),(0,y)--(g(y),y),dashed+Magenta,Arrow(Relative(0.5)));
draw((g(y),y)--(g(y),0),dashed+Magenta,Arrow(Relative(0.5)));


xtick(Label("$x$",align=S),x,S,lGreen);
ytick(Label("$y$",align=W),y,W,Magenta);
xtick(Label("$\frac y2$",align=S),y/2,S,Magenta);
ytick(Label("$2x$",align=W),2x,W,lGreen);

labelx("$x$",2.5,2S,red);
labely("$y$",4.5,2W,red);


