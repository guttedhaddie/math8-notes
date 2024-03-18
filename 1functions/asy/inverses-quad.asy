settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120,180,IgnoreAspect);

real f(real x){return x^2-1;}
real g(real x){return sqrt(x+1);}
real h(real x){return -sqrt(x+1);}

path p=graph(f,-3.2,3.2);
draw(graph(f,0,3.1),blue);
draw(graph(f,-3.1,0),brown);

xaxis(-3.2,3.2,red,RightTicks(Ticks=new real[]{-4,-2,2,4},ticks=new real[]{-3,-1,1,3}));
yaxis(-3.2,red,LeftTicks(Ticks=new real[]{4,8,12,16},ticks=new real[]{-2,2,6,10,14}));

real x=2.4;
draw((x,0)--(x,f(x)),dashed+heavygreen,Arrow(Relative(0.5)));
draw(Label("$f$",align=S,Relative(0.5)),(x,f(x))--(0,f(x)),dashed+heavygreen,Arrow(Relative(0.5)));

real y=6.7;
draw(Label("$f^{-1}$?",align=N,Relative(0.6)),(0,y)--(g(y),y),dashed+orange,Arrow(Relative(0.5)));
draw((g(y),y)--(g(y),0),dashed+orange,Arrow(Relative(0.5)));
draw(Label("$f^{-1}$?",align=N,Relative(0.4)),(-1,y)--(h(y),y),dashed+orange,Arrow(Relative(0.4)));
draw((h(y),y)--(h(y),0),dashed+orange,Arrow(Relative(0.5)));

//labelx("$x$",x,heavygreen);
xtick(Label("$x$",align=S),x,S,heavygreen);
//labely("$y$",y,W,orange);
ytick(Label("$y$",align=W),y,W,orange);


draw(Label("$f^{-1}$?",align=S,Relative(0.6)),(0,-1.9)--(2.5,-1.9),dashed+purple,Arrow(Relative(0.6)));

//labely("$y$",-1.9,W,purple);
ytick(Label("$y$",align=W),-1.9,W,purple);


