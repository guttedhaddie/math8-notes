settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160,0);

real thmax=2pi;

draw(scale(pi/2)*unitcircle,heavygreen+dashed);
draw(scale(pi)*unitcircle,heavygreen+dashed);
draw(scale(3*pi/2)*unitcircle,heavygreen+dashed);
draw(scale(2pi)*unitcircle,heavygreen+dashed);

draw(-thmax*dir(30)--thmax*dir(30),heavygreen+dashed);
label("$\frac\pi 6$",1.15*thmax*dir(30),heavygreen);
label("$\frac{7\pi}6$",-1.15*thmax*dir(30),heavygreen);
draw(-thmax*dir(60)--thmax*dir(60),heavygreen+dashed);
label("$\frac\pi 3$",1.15*thmax*dir(60),heavygreen);
label("$\frac{4\pi}3$",-1.15*thmax*dir(60),heavygreen);
draw(-thmax*dir(120)--thmax*dir(120),heavygreen+dashed);
label("$\frac{2\pi}3$",1.15*thmax*dir(120),heavygreen);
label("$\frac{5\pi}3$",-1.15*thmax*dir(120),heavygreen);
draw(-thmax*dir(150)--thmax*dir(150),heavygreen+dashed);
label("$\frac{5\pi}6$",1.15*thmax*dir(150),heavygreen);
label("$\frac{11\pi}6$",-1.15*thmax*dir(150),heavygreen);



xaxis(-7,7,red,RightTicks(new real[]{-6,-3,3,6}));
yaxis(-7,7,red,LeftTicks(new real[]{-6,-3,3,6}));

labelx("$x$",7,S,red);
labely("$y$",7,W,red);

dotfactor=8;

real r(real th){return th;}

draw(polargraph(r,0,2pi),blue,Arrow(Relative(0.8)));

for(int i=0; i<=12; ++i){
	dot((i*pi/6*dir(i*30)),blue);
}
