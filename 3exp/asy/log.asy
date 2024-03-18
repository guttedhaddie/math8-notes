settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,110,IgnoreAspect);

real f(real x){return log(x);}

real m=0.2;
real a=0.4;
real b=7.5;
real M=8.5;

draw(graph(f,m,a),blue+dashed);
draw(graph(f,a,b),blue);
draw(graph(f,b,M),blue+dashed);

xaxis("$x$",0,M,red,RightTicks(beginlabel=false));
yaxis("$y$",red,LeftTicks(Step=1,step=0.5));

label("$y=\ln x$",(5.9,1.3),blue);

real x=exp(1);
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);
//xtick(Label("$e$",align=S),exp(1),S,heavygreen);
labelx("$e$",exp(1),0.3S,heavygreen);


real x=exp(-1);
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);
//xtick(Label("$e^{-1}$",align=N),exp(-1),N,heavygreen);
labelx("$e^{-1}$",exp(-1),0.8dir(70),heavygreen);

real x=exp(2);
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);
//xtick(Label("$e^2$",align=S),exp(2),S,heavygreen);
labelx("$e^2$",exp(2),0.4dir(290),heavygreen);

real x=4;
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);
ytick(Label("$\ln 4$",align=W),log(4),W,heavygreen);