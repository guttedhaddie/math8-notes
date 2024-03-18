settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(105,70,IgnoreAspect);

pair[] dat={(0,4),(1,3),(1.5,2.5),(3,1)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=-1;
real c=4;

real f(real t){return m*t+c;}

draw(graph(f,0,3.2),blue+dashed);

//xaxis("$t$",0,5.5,red);
//yaxis("$y$",0,red);
xaxis(0,3.2,red);
yaxis(0,red);
