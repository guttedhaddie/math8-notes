settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,120,IgnoreAspect);

pair[] dat={(1,4),(2,8),(3,10),(5,21)};
real[] errsq={};

real m=21/5;
real c=-4/5;

real m=4;
real c=0;

label("$y=4t$",(2.6,-9),blue);

int n=dat.length;
for(int i=0; i<n; ++i){
	dot(dat[i]);
	errsq.push((dat[i].y-m*dat[i].x-c)^2);
}


real f(real t){return m*t+c;}

real SS=sum(errsq);

draw(graph(f,0,5.5),blue+dashed);

xaxis(0,5.5,red,RightTicks);
yaxis("$y$",0,red,LeftTicks());
labelx("$t$",5.5,2S,red);

write(SS);