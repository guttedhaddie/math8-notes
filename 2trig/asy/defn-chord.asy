settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,80);

real th=50;

pair A=(1,0);
pair O=(0,0);
pair B=dir(th);
pair D=dir(th/2);
real d=0.05;

draw(arc(O,1,-20,100));
draw("$\theta$",arc(O,0.1,0,th));
draw("$r$",O--A);
draw(O--B);
draw(A--B,blue);
draw(A+4d*D--A+2d*D,blue);
draw(B+4d*D--B+2d*D,blue);
draw("$\operatorname{crd}\theta$",A+3d*D--B+3d*D,blue);

