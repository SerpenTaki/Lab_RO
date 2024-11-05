set I;# Offerta
set J; # Domanda

param C{I,J};
param O{I};
param D{J};

var x{I,J} >=0 integer;

minimize costo: sum{i in I, j in J} C[i,j]*x[i,j]; #si può anche scrivere così sum{i in I} sum{j in J}

s.t. orig{i in I}: sum{j in J} x[i,j] <= O[i];
s.t. dest{j in J}: sum{i in I} x[i,j] = D[j];