settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,110,IgnoreAspect);

pair[] dat={(2,1),(2,5),(2,6)};
int n=dat.length;

real f(real t){return 1*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return 1.8*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return -0.2*(t-2)+4;}
draw(graph(f,0,3.2),blue);
real f(real t){return -1*(t-2)+4;}
draw(graph(f,0,3.2),blue);


xaxis("$t$",0,3.2,red,RightTicks);
yaxis("$y$",0,6,red,LeftTicks());

dot((2,4),heavygreen,NoFill);


for(int i=0; i<n; ++i){
	draw(dat[i]--(dat[i].x,f(dat[i].x)),heavygreen);
	dot(dat[i]);
}

