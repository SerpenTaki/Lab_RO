set I;
set J;

param P{I};
param Q{J};
param A{I,J}

param minProd default 0;
param maxProd{I} default 999;

var x{prodotto in I} integer >=minProd <=maxProd;

maximize profTot; sum{i in I} (P[i]*x[i]);
s.t. dispon{j in J}: sum{i in J} A[i,j] * x[i] <= Q[j];