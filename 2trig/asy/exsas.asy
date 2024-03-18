settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160);

real rot=80;

pair C=(0,0);
pair B=2*dir(rot);
pair A=(sqrt(3)-1)*dir(120+rot);

draw("$c$",B--A,blue);
draw("$2$",C--B,red);
draw("$\sqrt 3-1$",A--C,heavygreen);

draw("$A$",arc(A,A+0.15*unit(C-A),A+0.15*unit(B-A)),red);
draw("$B$",arc(B,B+0.5*unit(A-B),B+0.5*unit(C-B)),heavygreen);
draw("120\textdegree\negthickspace",arc(C,C+0.07*unit(B-C),C+0.07*unit(A-C)),blue);

