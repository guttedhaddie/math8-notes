settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,120,IgnoreAspect);

pair[] dat={(1,2),(2,5),(3,7),(4,4)};
int n=dat.length;

real a=-1.5;
real b=8.3;
real c=-5;


real f(real t){return a*t^2+b*t+c;}

real h(real t){return (1/6)*(-4t^3+21t^2-17*t+12);}

real g(real t){return 0.8*t+2.5;}

for(int i=0; i<n; ++i){
draw(dat[i]--(dat[i].x,f(dat[i].x)),lightgreen);
draw(dat[i]--(dat[i].x,g(dat[i].x)),lightgreen);
}

draw(graph(g,0,4.8),blue);

draw(graph(h,0,4.5),magenta);

draw(graph(f,0.7,4.8),orange);

for(int i=0; i<n; ++i){
	dot(dat[i]);
}

xaxis(0,4.8,red,RightTicks());
yaxis(0,7.5,red,LeftTicks());


labelx("$t$",4.9,2S,red);
labely("$y$",7.3,2W,red);


