var x1; var x2; var x3;
minimize costo: 4*x1 + 10*x2 + 7*x3;
s.t. pro: 5*x1 + 15*x2 + 4*x3 >= 20;
s.t. fer: 6*x1 + 10*x2 + 5*x3 >= 30;
s.t. cal: 5*x1 + 3*x2 + 12*x3 >= 10;
s.t. d1: x1 >= 0;s.t. d2: x2 >= 0;s.t. d3: x3 >= 0;