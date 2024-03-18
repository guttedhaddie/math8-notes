settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,120,IgnoreAspect);

real P(real t){return 4.998*(1.186)^t;}

//draw(graph(P,0,10),blue);

real[] dat={5,7,10,14,19,28};
int n=dat.length;

xaxis(0,10,red,RightTicks(N=5,n=2));
yaxis("$P$",0,30,red,LeftTicks(N=3,n=2));

labelx("$t$",10.9,S,red);


for(int i=0; i<n; ++i){
	dot((2i,dat[i]),heavygreen);
}



