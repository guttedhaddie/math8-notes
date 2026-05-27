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

pair[] dat={(1,1),(1,3),(4,1),(4,3)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=0;
real c=2;

real f(real t){return m*t+c;}

draw(graph(f,0,4.9),blue+dashed);

//xaxis("$t$",0,5.5,red);
//yaxis("$y$",0,red);
xaxis(0,4.9,red);
yaxis(0,red);
