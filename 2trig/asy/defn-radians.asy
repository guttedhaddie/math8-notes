settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(150);

real th=50;

pair A=(1,0);
pair O=(0,0);
pair B=dir(th);
pair D=dir(th/2);
real d=0.05;

draw(arc(O,B,A));
draw("$\theta$",arc(O,0.2,0,th),blue);
draw("$1$",O--A);
draw(O--B);
draw(arc(O,A,B),blue+linewidth(1.5));
//label("$\theta$",D,-D,blue);

for(int k=0; k<12; ++k){
	draw(0.95dir(k*360/12)--1.05*dir(k*360/12));
}

label("0\textdegree",1.2dir(0));
label("30\textdegree",1.25dir(30));
label("60\textdegree",1.2dir(60));
label("90\textdegree",1.2dir(90));
label("120\textdegree",1.2dir(120));
label("150\textdegree",1.2dir(150));
label("180\textdegree",1.25dir(180));
label("210\textdegree",1.25dir(210));
label("240\textdegree",1.2dir(240));
label("270\textdegree",1.2dir(270));
label("300\textdegree",1.2dir(300));
label("330\textdegree",1.25dir(330));
label("$\frac\pi 6$",0.8dir(30));
label("$\frac\pi 3$",0.8dir(60));
label("$\frac\pi 2$",0.8dir(90));
label("$\frac{2\pi}3$",0.75dir(120));
label("$\frac{5\pi}6$",0.8dir(150));
label("$\pi$",0.8dir(180));
label("$\frac{7\pi}6$",0.8dir(210));
label("$\frac{4\pi}3$",0.8dir(240));
label("$\frac{3\pi}2$",0.8dir(270));
label("$\frac{5\pi}3$",0.8dir(300));
label("$\frac{11\pi}6$",0.8dir(330));
