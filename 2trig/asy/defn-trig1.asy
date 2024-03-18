settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(100,0);

real th=35;

pair A=(1,0);
pair O=(0,0);
pair B=dir(th);
pair D=(B.x,0);

//draw(arc(O,1,-20,100));
draw("$\theta$",arc(O,0.15,0,th));
draw("$1$",B--O);

draw(box(D-(0.05,0),D+(0,0.05)));
draw("$\cos\theta$",O--D,heavygreen);
draw("$\sin\theta$",D--B,blue);

