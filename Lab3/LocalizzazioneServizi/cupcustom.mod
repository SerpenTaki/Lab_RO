set I;#quartieri
param C{I,I};
param T; #soglia

var x{I} binary;

minimize numCup: sum{i in I} x[i];

s.t. soddisfa{i in I}:
		sum{j in I : C[i,j] <= T } x[j] >= 1;