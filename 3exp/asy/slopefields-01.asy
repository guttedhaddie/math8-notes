settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;

size(140);


pair a=(-2,-2);
pair b=(2,2);

     

real f(real x){return exp(x);}
//draw(graph(f,-2,2),Blue);
real f(real x){return 0.5exp(x);}
draw(graph(f,-2,2),lGreen+linewidth(1));
real f(real x){return -0.3exp(x);}
//draw(graph(f,-2,2),orange);
real f(real x){return -0.7exp(x);}
//draw(graph(f,-2,2),brown);
clip(box((-2,-2.5),(2.4,2.5)));

//label("$y=e^x$",(2.5,1.2),E,blue);
//label("$y=0.5e^x$",(2.5,0.4),E,heavygreen);
//label("$y=-0.3e^x$",(2.5,-0.4),E,orange);
//label("$y=-0.7e^x$",(2.5,-1.2),E,brown);
//
path vector(pair z) {return (1,z.y);}
     
//add(vectorfield(vector,a,b));

add(vectorfield(vector,a,b,9,9));


xaxis("$x$",-2,2.4,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis("$y$",red,LeftTicks(new real[]{-2,-1,1,2}));
