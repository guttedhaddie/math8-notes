settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,90);

real th=35;

pair A=(1,0);
pair O=(0,0);
pair B=dir(th);
pair D=(B.x,0);

draw(unitcircle);
draw("$\theta$",arc(O,0.2,0,th));
draw("$1$",B--O);

//draw(box(D-(0.05,0),D+(0,0.05)));
//draw(D--B,blue);
dot(B);

xaxis("$x$",-1.1,1.3,red);
yaxis("$y$",-1.1,1.3,red);
