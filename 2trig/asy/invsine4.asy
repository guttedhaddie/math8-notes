settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(420);

dotfactor=8;

real f(real x){
	return sin(x);
}

transform T=shift((8.3,0));

draw(graph(f,0,2pi),blue+linewidth(1));
draw("1",T*(0,0)--T*(1,0));
draw("$x$",T*arc((0,0),0.3*dir(0),0.3*dir(145)),Arrow);

draw(T*unitcircle,blue);


xaxis("$x$",0,2.15pi,red);
yaxis("$y=\sin x$",-1.1,1.2,red,LeftTicks(new real[]{-1,0,1}));
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);

void sinpic(real th, real r, pen pen=black){
	real x=pi*th/180;
	dot(T*dir(th),pen);
	dot((x,f(x)),pen);
	draw(T*dir(th)--(x,f(x)),dashed+pen);
	draw(T*(0,0)--T*dir(th),pen);
	//draw(T*arc((0,0),r*dir(0),r*dir(th)),pen+linewidth(1));
	xtick(x,N,pen+linewidth(1));
}

sinpic(55,0.1,heavygreen);
sinpic(110,0.15,0.75heavygreen+0.25magenta);
sinpic(165,0.2,0.5heavygreen+0.5magenta);
sinpic(220,0.25,0.25heavygreen+0.75magenta);
sinpic(275,0.3,magenta);