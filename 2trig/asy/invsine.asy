settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real f(real x){return sin(x);}
pair F(real x){return (x,f(x));}
pair G(real x){return (f(x),x);}

path p=graph(F,-pi/2,pi/2,operator..);
path q=graph(G,-pi/2,pi/2,operator..);

draw(p,blue);
draw(q,deepgreen);
label("$y=\sin x$",(-1,1),blue);
label("$y=\sin^{-1}x$",(1,-1),deepgreen);

dot(F(pi/2),blue);
dot(F(-pi/2),blue);
dot(G(pi/2),deepgreen);
dot(G(-pi/2),deepgreen);

xaxis("$x$",-pi/2,pi/2,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-pi/2,pi/2,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
ytick(Label("$\frac\pi 2$",align=W),pi/2,W,red);
ytick(Label("$-\frac\pi 2$",align=W),-pi/2,W,red);

