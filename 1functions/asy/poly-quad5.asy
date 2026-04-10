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

import graph;


size(140,130,IgnoreAspect);

real f(real x){return -5x^2+125;}

draw(graph(f,0,5),Blue);

xaxis(0,5.75,RightTicks(new real[]{0,2,4},new real[]{1,3,5}));
yaxis(0,145,LeftTicks(new real[]{0,50,100},new real[]{25,75,125}));

dotfactor=7;

for(int n=0; n<=5; ++n){
	dot((n,f(n)),Blue);
}

labelx("$t$",5.5,S);
labely("$y$",140,W);