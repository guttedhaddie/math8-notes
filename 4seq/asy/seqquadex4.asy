settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150,120,IgnoreAspect);

real f(real x){return 5*3^x/1000;}

for(int n=1; n<=4; ++n){
	dot((2n-1,f(2n-1)),blue);
}

xaxis("$x$",0,7,red,RightTicks(Step=2,step=1));
yaxis("$y$ (1000s)",0,10.5,red,LeftTicks(new real[]{0,2,4,6,8,10}));


