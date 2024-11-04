set I; #prodotti
set J; #risorse

param P{I}; #profitto unitario
param Q{J}; #disponibilita
param A{I, J}; #consumi unitari

var x{I}; # var q.ta prodotti

maximize profTot: sum{i in I} P[i]*x[i];

s.t. dispon{j in J}: sum{i in I} A[i,j]*x[i] <= Q[j];
