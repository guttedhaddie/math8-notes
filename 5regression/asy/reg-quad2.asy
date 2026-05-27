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

pair[] dat={(1,2),(2,5),(3,7),(4,4)};
int n=dat.length;

real a=-1.5;
real b=8.3;
real c=-5;


real f(real t){return a*t^2+b*t+c;}


for(int i=0; i<n; ++i){
draw(dat[i]--(dat[i].x,f(dat[i].x)),lGreen);
}

real g(real t){return 0.8*t+2.5;}

draw(graph(g,0,4.8),Brown);

draw(graph(f,0.7,4.8),blue);

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

xaxis(0,4.8,red,RightTicks());
yaxis(0,7.5,red,LeftTicks());


labelx("$t$",4.9,2S,red);
labely("$y$",7.3,2W,red);


