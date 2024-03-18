settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(140,140,IgnoreAspect);

real f(real x){return x^2-1;}

path p=graph(f,-3.2,3.2);
draw(graph(f,0,3.2),blue);
draw(graph(f,-3.2,0),brown);

//xaxis(-3.3,3.5,red,RightTicks(new real[]{-2,0,2}));
xaxis(-3.3,3.5,red,RightTicks(Ticks=new real[]{-4,-2,2,4},ticks=new real[]{-3,-1,1,3}));
yaxis("$y$",-1.5,red,LeftTicks(Ticks=new real[]{4,8,12,16},ticks=new real[]{2,6,10,14}));

draw((-3,8)--(-3,0),dashed+heavygreen,Arrow(Relative(0.5)));
draw((0,8)--(-3,8),dashed+heavygreen,Arrow(Relative(0.85)));
draw((3,8)--(3,0),dashed+orange,Arrow(Relative(0.5)));
draw((0,8)--(3,8),dashed+orange,Arrow(Relative(0.5)));


dot((-3,f(-3)),heavygreen);
dot((3,f(3)),orange);

labelx("$x$",3.5,red);
labelx("$-3$",-3,heavygreen);
labelx("$3$",3,orange);
//labely("$9$",9,E,heavygreen);



