settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(240);

draw(shift((0,1))*unitsquare);
draw(shift((3,2))*unitsquare);

draw((-0.5,0)--(4.5,0));
draw((1,1)--(2,0)--(3,2),dashed);

dot("connection",(2,0),S);
label("wires",(1.8,0.8));
label("electric supply",(4,0),N);

label("House 1",(0.5,1),S);
label("House 2",(3.5,2),S);