settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(90);


filldraw(circle((0,0),1),lightblue,black);
filldraw(shift((0.2,0))*xscale(0.7)*yscale(0.5)*circle((0,0),1),lightgreen+lightblue,black);

label("$A$",0.8*dir(70),blue);
label("$B$",0.4*dir(0),heavygreen);

dot("$a$",0.7*dir(130),NE);
dot("$b$",(-0.2,0),SE);

//label("$\textcolor{green}{B}\subseteq \textcolor{blue}{A}$",(0,-1.2));
