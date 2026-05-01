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


size(170,110,IgnoreAspect);

real Ts=50;
real k=log(4/3);

real T(real t){return 50+160exp(-k*t);}
path p=graph(T,0,12);
draw(p,blue);

draw(rotate(180,(6,(210+T(12))/2))*p,Magenta);

draw((0,210)--(12,T(12)),Brown);


xaxis(0,12,red,RightTicks(new real[]{0}));
yaxis("$T$",0,210,red,LeftTicks(Step=50,step=25));

labelx("$t$",11.5,2S,red);
