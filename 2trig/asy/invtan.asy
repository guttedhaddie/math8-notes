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

size(200);

real f(real x){return tan(x);}
pair F(real x){return (x,f(x));}
pair G(real x){return (f(x),x);}

path p=graph(F,-1.3,1.3,operator..);
path q=graph(G,-1.3,1.3,operator..);

draw(p,blue);
draw(q,deepgreen);
label("$y=\tan x$",(2.3,2.3),blue);
label("$y=\tan^{-1}x$",(-2.3,-1.6),deepgreen);

xaxis("$x$",red);
yaxis("$y$",red);
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
ytick(Label("$\frac\pi 2$",align=W),pi/2,W,red);
ytick(Label("$-\frac\pi 2$",align=W),-pi/2,W,red);
