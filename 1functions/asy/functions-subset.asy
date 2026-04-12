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
pen mPink=defaultpen+rgb("E5007E");
pen mMagenta=defaultpen+rgb("DE1795");
pen mRed=defaultpen+rgb("EB0000");
pen mGreen=defaultpen+rgb("008A00");
//Brown,Blue,DarkOrchid

import graph;

size(90);


filldraw(circle((0,0),1),lightblue+white,black);
filldraw(shift((0.2,0))*xscale(0.7)*yscale(0.5)*circle((0,0),1),lightgreen+lightblue,black);

label("$A$",0.8*dir(70),Blue);
label("$B$",0.4*dir(0),Green);

dot("$a$",0.7*dir(130),NE);
dot("$b$",(-0.2,0),SE);

//label("$\textcolor{green}{B}\subseteq \textcolor{blue}{A}$",(0,-1.2));
