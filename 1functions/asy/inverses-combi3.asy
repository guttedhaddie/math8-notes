settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160,120,IgnoreAspect);

pair F(real x){return (x^2-1,x);}

path p=graph(F,-3.2,3.2);
//draw(graph(F,0,3.2),blue);
draw(graph(F,-3.2,0),brown+linewidth(1));

//xaxis(-3.3,3.5,red,RightTicks(new real[]{-2,0,2}));
yaxis(-3.3,0.99,red,LeftTicks(Ticks=new real[]{-4,-2,2,4},ticks=new real[]{-3,-1,1,3}));
xaxis("$x$",-1.5,red,RightTicks(Ticks=new real[]{3,6,9},ticks=new real[]{-2,-1,1,2,4,5,7,8}));


//labelx("$-3$",-3,heavygreen);
labely("$y$",0.8,2W,red);

label("$f^{-1}(x)=-\sqrt{x+1}$",(4.2,0.7),brown);

