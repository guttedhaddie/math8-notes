settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160);

real f(real x){return x^2-6x+7;}

draw(graph(f,0.9,5.1),heavygreen);

xaxis(0,5,red,RightTicks(new real[]{1,2,3,4}));
yaxis("$y$",-2.8,2.5,red,LeftTicks(new real[]{-2,-1,0,1,2,3}));
labelx("$x$",5,S,red);
draw(Label("$Y$",Relative(0.95),align=W),(3,-2.75)--(3,2),blue+dashed,Arrow);
draw(Label("$X$",Relative(0.95),align=N),(1,-2)--(5,-2),blue+dashed,Arrow);

draw((3,-7/4)--(2.0,f(2.0))--(2.0,-2.25),StickIntervalMarker(2,2,blue));
dot(Label("$F$",black),(3,-7/4),NE,red);
draw(Label("$d$",Relative(0.3)),(1,-9/4)--(5,-9/4));

