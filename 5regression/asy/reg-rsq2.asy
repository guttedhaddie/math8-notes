settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(105,70,IgnoreAspect);

pair[] dat={(0,1),(0,3),(2,1),(2,3)};
int n=dat.length;

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

real m=0;
real c=2;

real f(real t){return m*t+c;}

draw(graph(f,0,2.2),blue+dashed);

//xaxis("$t$",0,5.5,red);
//yaxis("$y$",0,red);
xaxis(0,2.2,red);
yaxis(0,red);
