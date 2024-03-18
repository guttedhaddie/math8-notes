settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120,0);

pair A=(0,0);
pair B=1.4*dir(20);
pair C=dir(100);

draw("$c$",A--B,blue);
draw("$a$",B--C,red);
draw("$b$",C--A,heavygreen);

draw("$A$",arc(A,A+0.1*unit(B-A),A+0.1*unit(C-A)),red);
draw("$B$",arc(B,B+0.2*unit(C-B),B+0.2*unit(A-B)),heavygreen);
draw("$C$",arc(C,C+0.15*unit(A-C),C+0.15*unit(B-C)),blue);