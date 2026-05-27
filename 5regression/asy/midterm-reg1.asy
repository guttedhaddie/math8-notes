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


size(132,110,IgnoreAspect);

real[] tdat={1,2,3,4,5,6,7,8,9,10};
real[] ydat={7,5,3,2,3,5,6,9,8,12};
int n=tdat.length;

real f(real t){return (2/3)*t+7/3;}

draw(graph(f,0,10),Blue);


xaxis("$t$",0,10,Red,RightTicks(Step=2,step=1));
yaxis("$y$",0,12,Red,LeftTicks(Step=4,step=2));


for(int i=0; i<n; ++i){
	dot((tdat[i],ydat[i]));
}

label("linear",(5,-5));