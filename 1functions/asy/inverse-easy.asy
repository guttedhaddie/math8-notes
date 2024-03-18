settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(100,75,IgnoreAspect);

void oval(real x, real y, real scx, real scy){
	draw(shift((x,y))*xscale(scx)*yscale(scy)*unitcircle);
}

void arr(pair P, pair Q){
	draw(0.05*Q+0.95*P--0.9*Q+0.1*P,Arrow);
}

dot("$1$",(0.05,1.5),W);
dot("$2$",(0,0.5),W);
dot("$3$",(0,-0.5),W);
dot("$4$",(0.05,-1.5),W);
oval(-0.1,0,0.7,2);

dot("$4$",(3.05,1.5),E);
dot("$2$",(3.05,0.5),E);
dot("$5$",(3.05,-0.5),E);
dot("$7$",(3.05,-1.5),E);
oval(3.15,0,0.8,2);

//arr((0,1.5),(3,1.5));
//arr((0,0.5),(3,0.5));
//arr((0,-0.5),(3,-0.5));
//arr((0,-1.5),(3,-1.5));

draw(Label("$f$",align=N),(0.65,0.6)..(1.475,0.75)..(2.3,0.6),heavygreen,Arrow);
draw(Label("$f^{-1}$",align=S),(2.3,-0.6)..(1.475,-0.75)..(0.65,-0.6),orange,Arrow);

