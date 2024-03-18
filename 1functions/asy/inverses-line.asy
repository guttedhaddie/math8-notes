settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(90,130,IgnoreAspect);

real f(real x){return 2x;}
real g(real x){return x/2;}

draw((-0.2,f(-0.2))--(2.1,f(2.1)),blue);


xaxis(0,2.1,red,RightTicks(Ticks=new real[]{0,1,2},ticks=new real[]{0.5,1.5}));
yaxis(0,f(2.1),red,LeftTicks(Ticks=new real[]{0,2,4},ticks=new real[]{1,3}));

real x=0.7;
draw((x,0)--(x,f(x)),dashed+heavygreen,Arrow(Relative(0.5)));
draw("$f$",(x,f(x))--(0,f(x)),dashed+heavygreen,Arrow(Relative(0.5)));

real y=3.3;
draw(Label("$f^{-1}$",align=N,Relative(0.6)),(0,y)--(g(y),y),dashed+orange,Arrow(Relative(0.5)));
draw((g(y),y)--(g(y),0),dashed+orange,Arrow(Relative(0.5)));



xtick(Label("$x$",align=S),x,S,heavygreen);
ytick(Label("$y$",align=W),y,W,orange);
xtick(Label("$\frac y2$",align=S),y/2,S,orange);
ytick(Label("$2x$",align=W),2x,W,heavygreen);


