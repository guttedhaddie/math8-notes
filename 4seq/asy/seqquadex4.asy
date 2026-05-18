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


size(150,110,IgnoreAspect);

real f(real x){return 5*3^x/1000;}

for(int n=1; n<=4; ++n){
	dot((2n-1,f(2n-1)),blue);
}

xaxis(0,7,red,RightTicks(Step=2,step=1));
yaxis("$y$ (1000s)",0,red,LeftTicks(new real[]{0,2,4,6,8,10}));


labelx("$x$",6.8,2S,red);