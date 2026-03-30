settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage[otfmath,theoremfont,trueslanted,largesc]{newpx}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,130);

draw(shift((0,1))*unitsquare);
draw(shift((3,2))*unitsquare);

draw((-0.5,0)--(4.5,0));
draw((1,1)--(2,0)--(3,2),dashed);

dot("connection",(2,0),S);
label("wires",(1.8,0.8));
label("electric supply",(4,0),N);

label("House 1",(0.5,1),S);
label("House 2",(3.5,2),S);