settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100,70,IgnoreAspect);

pair[] dat={(1,4),(2,8),(3,10),(5,21)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=21/5;
real c=-4/5;

real f(real t){return m*t+c;}

draw(graph(f,0,5.5),blue+dashed);

xaxis(0,5.5,red);
yaxis(0,red);
