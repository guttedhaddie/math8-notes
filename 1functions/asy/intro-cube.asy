settings.tex="lualatex";
defaultpen(fontsize(12pt));

//OpenGL (default)

//PNG
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage[otfmath,theoremfont,trueslanted,largesc]{newpx}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames]{xcolor}
");
include graph;
import graph3;
import solids;

size(0,120);

currentprojection=orthographic(3.7,1.5,1);

draw(unitcube,0.5orange+0.5white);

draw(Z--Z+X--Y+X,linewidth(4));

label("$A$",Z,Z);
label("$B$",Y+X,0.5(Y-Z));