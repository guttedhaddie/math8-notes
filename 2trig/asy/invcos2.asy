if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(350);

real f(real x){return cos(x);}
pair F(real x){return (x,f(x));}

path p=graph(F,0,pi,operator..);
path q=graph(F,-2pi,0,operator..);
path r=graph(F,pi,2pi,operator..);

draw(p,blue);
draw(q,blue+dashed);
draw(r,blue+dashed);
//label("$y=\sin x$",(-1,1),blue);

dot((pi,-1),blue);
dot((0,1),blue);

xaxis("$x$",-2.1pi,2.1pi,red);
yaxis("$y$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$-\frac{3\pi}2$",align=S),-3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$-2\pi$",align=S),-2pi,S,red);
