settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

import graph;

size(110,0);

real f(real x){return x^2;}

path p=graph(f,-3.3,3.3);
draw(p,blue);

//xaxis(-3.3,3.5,red,RightTicks(new real[]{-2,0,2}));
xaxis(-3.3,3.5,red,RightTicks(Ticks=new real[]{-2,0,2},ticks=new real[]{-3,-1,1,3}));
yaxis("$y$",0,brown,LeftTicks(Ticks=new real[]{2,4,6,8,10},ticks=new real[]{1,3,5,7,9,11}));

draw((2,0)--(2,11),dashed+heavygreen);

dotfactor=10;
for(int n=-1; n<=3; ++n){
		dot((n,f(n)),magenta);
	}

labelx("$x$",3.2,red);



