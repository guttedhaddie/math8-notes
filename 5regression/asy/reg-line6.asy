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


size(160,110,IgnoreAspect);

pair[] dat={(2,6),(2,5),(2,1)};
int n=dat.length;

real f(real t){return 1*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return 1.8*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return -0.2*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return -1*(t-2)+4;}
draw(graph(f,0,3.2),blue);


xaxis("$t$",0,3.2,red,RightTicks);
yaxis("$y$",0,6,red,LeftTicks());



for(int i=0; i<n; ++i){
	draw(dat[i]--(dat[i].x,f(dat[i].x)),lGreen);
	dot(dat[i]);
}

dot((2,4),lGreen,UnFill);
