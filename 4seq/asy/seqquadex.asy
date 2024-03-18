settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,150,IgnoreAspect);

real f(real x){return 3*x^2-2;}

for(int n=1; n<=5; ++n){
	dot((n,f(n)),blue);
}

xaxis("$x$",0,5,red,RightTicks);
yaxis("$y$",0,80,red,LeftTicks(Step=20,step=10));


