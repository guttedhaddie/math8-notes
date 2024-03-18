settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120,0);

void oval(real x, real y, real scx, real scy){
	draw(shift((x,y))*xscale(scx)*yscale(scy)*unitcircle);
}

void arr(pair P, pair Q){
	draw(0.05*Q+0.95*P--0.9*Q+0.1*P,Arrow);
}

dot("$-1$",(0.4,1.5),W);
dot("$0$",(0,0.75),W);
dot("$1$",(0.3,0),W);
dot("$2$",(0,-0.75),W);
dot("$3$",(0.3,-1.5),W);
oval(0.1,0,0.7,2);

dot("$0$",(3,1.5),E);
dot("$1$",(3,0.5),E);
dot("$4$",(3,-0.5),E);
dot("$9$",(3,-1.5),E);
oval(3.1,0,0.6,2);

arr((0.4,1.5),(3,0.5));
arr((0.3,0),(3,0.5));
arr((0,0.75),(3,1.5));
arr((0,-0.75),(3,-0.5));
arr((0.3,-1.5),(3,-1.5));
