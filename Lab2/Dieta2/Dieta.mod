set I; #Risorse
set J; #Domande

param C{I}; 
param D{J};
param A{I,J};

param minRisorsa{I} default 0;

var x{ris in I} >=minRisorsa[ris];

minimize spesaTot: sum{i in I} C[i]*x[i];

s.t. copri{j in J}: sum{i in I} A[i,j]*x[i] >= D[j];