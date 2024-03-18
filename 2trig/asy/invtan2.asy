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

real f(real x){return tan(x);}
pair F(real x){return (x,f(x));}

path p=graph(F,-1.3,1.3,operator..);

draw(p,blue);
draw(shift((pi,0))*p,blue+dashed);
draw(shift((2pi,0))*p,blue+dashed);
draw(shift((-pi,0))*p,blue+dashed);
draw(shift((-2pi,0))*p,blue+dashed);
clip(currentpicture,box((-2pi,-4),(2pi,4)));
//label("$y=\sin x$",(-1,1),blue);


xaxis("$x$",-2.1pi,2.1pi,red);
yaxis("$y$",red,LeftTicks(new real[]{-3,-2,-1,1,2,3}));
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$-\frac{3\pi}2$",align=S),-3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$-2\pi$",align=S),-2pi,S,red);
