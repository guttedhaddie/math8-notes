settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,140,IgnoreAspect);

real[] datl={0.24,0.61,1,1.88,11.86,29.46,84.01,164.79};
real[] datw={57.9,108.2,149.6,228,778.5,1433.3,2872.6,4493.6};
int n=datl.length;

xaxis("$r$",0,4500,red,RightTicks(Step=2000,step=1000));
yaxis("$T$",0,170,red,LeftTicks(Step=40,step=20));


for(int i=0; i<n; ++i){
	dot((datw[i],datl[i]),heavygreen);
}


