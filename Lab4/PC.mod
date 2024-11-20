set S;
set B;

param w{S};
param c{S,B};
param a{S};
param b{B};

param stab_bill symbolic in S; #check che italia sia in S, se sbaglio a scrivere lui mi dice dove è l'errore
param minFracTot >=0 <=1;
param beta >=0.0 <=0.5;

var x{S,B} >=0 integer;

minimize costo: sum{i in S, j in B} (w[i]+c[i,j])*x[i,j];

s.t. capacita{i in S}: sum{j in B} x[i,j] <= a[i];

s.t. domanda{j in B}: sum{i in S} x[i,j] == b[j];

s.t. proteggialpha: sum{j in B} x[stab_bill,j]
				>= minFracTot * sum{i in S, j in B} x[i,j];
				
s.t. proteggibeta{i in S diff {stab_bill} }:
		sum{j in B} x[stab_bill,j]
			>= beta * sum{j in B} x[i,j];