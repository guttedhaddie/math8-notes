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


size(170,120,IgnoreAspect);

real f(real t){return 10*2^(t/6);}

real b=10;
draw((0,10)..graph(f,0.01,b),blue);

xaxis("$t$",0,b,red,RightTicks);
yaxis("$P$",0,30,red,LeftTicks(Step=10,step=5));


dot((0,10),lGreen);
dot((6,20),lGreen);

real x=9;
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),lGreen+dashed);
//dot((x,f(x)),heavygreen);
//xtick(Label("$e$",align=S),exp(1),S,heavygreen);
//labelx("$e$",exp(1),0.3S,heavygreen);

