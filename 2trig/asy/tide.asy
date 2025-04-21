settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,65,IgnoreAspect);

dotfactor=8;

real h(real t){
	return 7+3*cos((5/31)*(t-2)*pi);
}

draw(graph(h,0,24),blue);

dot((2,h(2)),magenta);
dot((8.2,h(8.2)),heavygreen);

xaxis(0,26,red,RightTicks(new real[]{0,4,8,12,16,20,24}));
yaxis("$h(t)$",0,12,red,LeftTicks(new real[]{0,5,10}));
labelx("$t$",26,red);
