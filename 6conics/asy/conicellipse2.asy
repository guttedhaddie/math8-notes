if(settings.render < 0) settings.render=4;
settings.outformat="html";
//settings.prc=false;
settings.inlineimage=true;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
include graph;

import solids;
size(0,120);
currentprojection=orthographic(3,-1.5,0.8);
pen color=lightgreen+opacity(0.4);
triple F3(real r) {return (r,0,r);}
path3 p3=graph(F3,0,2,n=10,operator ..);
render render=render(compression=0,merge=true);
draw(surface(revolution(p3,Z,0,360)),color,render);
triple F3(real r) {return (r,0,-r);}
path3 p3=graph(F3,0,2,n=10,operator ..);
render render=render(compression=0,merge=true);
draw(surface(revolution(p3,Z,0,360)),color,render);

real a=0.5;
real h(real y){return a*y+3/(sqrt(13));}

path3 sq=(-1.5,-1.5,h(-1.5))--(-1.5,2.5,h(2.5))--(1.5,2.5,h(2.5))--(1.5,-1.5,h(-1.5))--cycle;
draw(surface(sq),lightblue+opacity(0.3));

triple z(real t){return (cos(t),(2/sqrt(13))+(2/sqrt(3))*sin(t),h((2/sqrt(13))+(2/sqrt(3))*sin(t)));}

draw(graph(z,0,2pi),blue);

//xaxis3("$x$",-1.1,1.2,red,OutTicks(new real[]{1}));
//yaxis3("$y$",-1.1,1.2,red,OutTicks(new real[]{1}));
//zaxis3("$z$",0,1.2,red,OutTicks(new real[]{1}));
