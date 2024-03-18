settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(160,120,IgnoreAspect);

real f(real x){return -x^2+9*x+2;}

for(int n=0; n<=5; ++n){
	dot((2n,f(2n)),blue);
}

xaxis("$x$",0,10,red,RightTicks(beginlabel=false));
yaxis("$y$",-8,22,red,LeftTicks(Step=10,step=5));


