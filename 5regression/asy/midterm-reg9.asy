settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(132,115,IgnoreAspect);

real[] tdat={1,2,3,4,5,6,7,8,9,10};
real[] ydat={7,5,3,2,3,5,6,9,8,12};
int n=tdat.length;

real f(real t){return 0.000303130512*t^9-0.014310515877*t^8+0.2882275133*t^7-3.2371527759*t^6+22.241087968511*t^5-96.472048634611*t^4+262.799349708265*t^3-430.276488187556*t^2+377.671031819350*t-126;}

draw(graph(f,0.8,10,1000,operator--));
path p=(1,ydat[0]);
for(int k=1; k<=9; ++k){
	p=p..(k,ydat[k]);
	}
	
//draw(p);

xaxis("$t$",0,10,RightTicks(Step=2,step=1));
yaxis("$y$",0,12,LeftTicks(Step=4,step=2));


for(int i=0; i<n; ++i){
	dot((tdat[i],ydat[i]));
}


label("degree nine",(5,-5));
