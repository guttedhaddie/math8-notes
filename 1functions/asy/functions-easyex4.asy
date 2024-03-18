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

//path p=reflect((0,0),(1,1))*graph(f,2+del,4.5);
path q=reflect((0,0),(1,1))*graph(f,-4,2-del);

//draw(p,blue);
draw(q,blue);


xaxis("$x$",0,brown,RightTicks(beginlabel=false));
yaxis("$f^{-1}(x)$",-4,2,red,LeftTicks);

dot((0,2),red,UnFill);

//real x=2.8;
//real ht=f(2+del);
//draw((x,0)--(x,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);

//real y=3.2;
//real x=2-1/(sqrt(y));
//real X=2+1/(sqrt(y));
//draw((y,0)--(y,4.5),orange+dashed);
//draw((0,x)--(y,x),orange+dashed);
//draw((0,X)--(y,X),orange+dashed);
//dot((y,x),orange);
//dot((y,X),orange);
