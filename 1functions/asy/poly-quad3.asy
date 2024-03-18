settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(160,IgnoreAspect);

real f(real x){return x^2;}

draw(graph(f,0,2.25),blue);
draw(graph(f,-2.25,0),heavygreen);

real x0=-1;
real x1=1.5;

xaxis("$x$",-2.25,2.25,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis("$y$",0,f(2.25)+0.1,red,LeftTicks(new real[]{2,4}));

//xtick(Label("$x_0$",align=S),x0,S,blue);
//xtick(Label("$x_1$",align=S),x1,S,blue);
//xtick(Label("$x_t$",align=S),xt,S,blue);

draw(Label("Convex",Relative(0.2)),(x1,f(x1))--(x0,f(x0)),dashed);

label("Increasing",(1,-1.5),blue);
label("Decreasing",(-1,-1.5),heavygreen);


