%% labb 1.1 a)
Q = 100;
A = 10;
k = 5;

[Coords, Edof, nnod, nel, L] = geom(2,8,3);
K = zeros(nnod,nnod);
fl = zeros(nnod,1);
for i = 1: length(Edof)
   Ke =  spring1e(A*k/L);
   fle = spring1s(Q/L,[Coords(i) Coords(i+1)]);
   [K,fl] = assem(Edof(i,:), K, Ke, fl, fle);
end
fl(end) = fl(end) + 150;
bc = [1 0];
[a,Q]=solve(K,fl,bc);