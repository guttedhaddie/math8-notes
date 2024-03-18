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

real f(real x){return cos(x);}
pair F(real x){return (x,f(x));}
pair G(real x){return (f(x),x);}

path p=graph(F,0,pi,operator..);
path q=graph(G,0,pi,operator..);

draw(p,blue);
draw(q,deepgreen);
label("$y=\cos x$",(1.9,0.6),blue);
label("$y=\cos^{-1}x$",(1,1.9),deepgreen);

dot(F(pi),blue);
dot(F(0),blue);
dot(G(pi),deepgreen);
dot(G(0),deepgreen);

xaxis("$x$",-1.2,1.2pi,red,RightTicks(new real[]{-1,1}));
yaxis("$y$",-1.2,1.2pi,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
ytick(Label("$\frac\pi 2$",align=W),pi/2,W,red);
ytick(Label("$\pi$",align=W),pi,W,red);
