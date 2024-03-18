if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
//settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

import graph3;
import solids;

size(120);

currentprojection=orthographic(3.7,1.5,1);

draw(unitcube,0.5orange+0.5white);

draw(Z--Z+X--Y+X,linewidth(4));

label("$A$",Z,Z);
label("$B$",Y+X,0.5(Y-Z));