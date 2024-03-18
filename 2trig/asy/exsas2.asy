settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

pair C=(0,0);
real a=5;
real b=9;
real ga=60;
pair A=b*dir(0);
pair B=a*dir(ga);
pair D=(B.x,0);

draw("$h$",D--B,dashed);
label("$x$",(C+D)/2-(0,0.7));

draw(shift(D)*scale(0.3)*box((0,0),(1,1)));


draw("$c$",A--B,blue);
draw("$5$",B--C,red);
draw("$9$",C--A,heavygreen);

draw("60\textdegree",arc(C,C+0.7*unit(A-C),C+0.7*unit(B-C)),blue);

