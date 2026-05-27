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

pair[] dat={(8,10),(10,7),(6,5),(7,8),(4,6)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=0.4;
real c=4.4;

real f(real t){return m*t+c;}

draw(graph(f,0,11),blue+dashed);

xaxis(0,11,red);
yaxis(0,red);
