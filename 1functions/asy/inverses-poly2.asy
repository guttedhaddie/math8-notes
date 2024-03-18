settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(140,100,IgnoreAspect);

real g(real x){return sqrt(x+1);}

path p=(-1,0){N}..graph(g,-0.9,9);
draw(p,blue);

xaxis(-1.5,9.5,red,RightTicks(Ticks=new real[]{0,3,6,9},ticks=new real[]{-1,1,2,4,5,7,8}));
yaxis(0,3.5,red,LeftTicks(Ticks=new real[]{2,4},ticks=new real[]{1,3}));

draw((8,0)--(8,3),dashed+orange,Arrow(Relative(0.5)));
draw((8,3)--(0,3),dashed+orange,Arrow(Relative(0.5)));

//dotfactor=8;
dot((8,g(8)),orange);

labelx("$x$",10,red);
labely(rotate(90,(-10,3))*"$g(x)$",3,W,red);
labelx("$8$",8,S,orange);
labely("$3$",3,W,orange);



