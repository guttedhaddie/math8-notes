settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(240,160,IgnoreAspect);

real[] datl={5.2,8.5,11.5,14.3,16.8,19.2,21.3,23.3,25.0,26.7,28.2,29.6,30.8,32.0,33.0,34.0,34.9,36.4,37.1,37.7};
real[] datw={2,8,21,38,69,117,148,190,264,293,318,371,455,504,518,537,651,719,726,810};
int n=datl.length;

xaxis("$l$",0,40,red,RightTicks(Step=10,step=5));
yaxis("$w$",0,850,red,LeftTicks());


for(int i=0; i<n; ++i){
	dot((datl[i],datw[i]),heavygreen);
}


