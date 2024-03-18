settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,0);

real f(real x){return 1/((2-x)^2);}

real del=0.45;

//path p=graph(f,2+del,4.5);
path q=graph(f,-4,2-del);

//draw(p,blue);
draw(q,blue);

xaxis("$x$",-4,2,red,RightTicks);
yaxis("$f(x)$",0,brown,LeftTicks(beginlabel=false));

dot((2,0),red,UnFill);

//real x=2.8;
//real ht=f(2+del);
//draw((x,0)--(x,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);

real y=3.2;
real x=2-1/(sqrt(y));
//real X=2+1/(sqrt(y));
draw((0,y)--(2,y),orange+dashed);
draw((x,0)--(x,y),orange+dashed);
//draw((X,0)--(X,y),orange+dashed);
dot((x,y),orange);
//dot((X,y),orange);
