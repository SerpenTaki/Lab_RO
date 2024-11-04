#reset;
var xL;
var xP;
maximize resa: 3000*xL+5000*xP;
s.t. terra: xP+xL<=12;
subject to semi: 7*xL <= 70;
s.t. tuberi: 3*xP <= 18;
s.t. conc: 10*xL+20*xP<=160;
s.t. domL: xL>=0;
s.t. domP: xP>=0;
#model <nome_file> per eseguire
#solve;
#display xL, xP, resa;