settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,140,IgnoreAspect);

real f(real x){return -5x^2+125;}

draw(graph(f,0,5),blue);

xaxis(0,5.75,red,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis(0,150,red,LeftTicks(new real[]{0,25,50,75,100,125}));

dotfactor=7;

for(int n=0; n<=5; ++n){
	dot((n,f(n)),heavygreen);
}

labelx("$t$",5.5,S,red);
labely("$y$",145,W,red);