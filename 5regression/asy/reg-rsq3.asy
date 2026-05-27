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


size(120,80,IgnoreAspect);

pair[] dat={(1,4),(2,8),(3,10),(5,21)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=21/5;
real c=-4/5;

real f(real t){return m*t+c;}

draw(graph(f,0,5.5),blue+dashed);

xaxis(0,5.5,red);
yaxis(0,red);
