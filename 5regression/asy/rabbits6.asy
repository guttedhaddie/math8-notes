settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(159,110,IgnoreAspect);

real[] dat={5,7,10,14,19,28};
int n=dat.length;


for(int i=0; i<n; ++i){
	dot((2i,log(dat[i])),heavygreen);
}

xaxis(0,10,red,RightTicks(N=5,n=2));
yaxis("$\ln P$",0,log(28),red,LeftTicks(N=0,Step=1,step=0.5));


labelx("$t$",10.9,S,red);

real PP(real t){return 0.171*t+1.609;}

draw(graph(PP,0,10),blue);