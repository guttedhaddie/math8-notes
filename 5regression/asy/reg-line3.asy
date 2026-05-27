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


size(180,140,IgnoreAspect);

pair[] dat={(8,10),(10,7),(6,5),(7,8),(4,6)};
int n=dat.length;

real m=2/5;
real c=22/5;

real f(real t){return m*t+c;}

draw(graph(f,0,11),Blue);

draw((0,0),Red);

xaxis("$Q1=t$",Bottom,0,11,Red,RightTicks);
yaxis("$Q2=y$",Left,0,10,Red,LeftTicks());

xtick(Label("9",align=S),9,S,Orange);
ytick(Label("8",align=W),8,W,Orange);
draw((9,0)--(9,8),Orange+dashed,Arrow(Relative(0.5)));
draw((9,8)--(0,8),Orange+dashed,Arrow(Relative(0.5)));

for(int i=0; i<n; ++i){
	draw(dat[i]--(dat[i].x,f(dat[i].x)),lGreen);
	dot(dat[i]);
}
