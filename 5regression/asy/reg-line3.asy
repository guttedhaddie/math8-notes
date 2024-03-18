settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,140,IgnoreAspect);

pair[] dat={(8,10),(10,7),(6,5),(7,8),(4,6)};
int n=dat.length;

real m=2/5;
real c=22/5;

real f(real t){return m*t+c;}

draw(graph(f,0,11),blue);

draw((0,0),red);

xaxis("$Q1=t$",Bottom,0,11,red,RightTicks);
yaxis("$Q2=y$",Left,0,10,red,LeftTicks());

xtick(Label("9",align=S),9,S,orange);
ytick(Label("8",align=W),8,W,orange);
draw((9,0)--(9,8),orange+dashed,Arrow(Relative(0.5)));
draw((9,8)--(0,8),orange+dashed,Arrow(Relative(0.5)));

for(int i=0; i<n; ++i){
	draw(dat[i]--(dat[i].x,f(dat[i].x)),heavygreen);
	dot(dat[i]);
}
