%% Labb 1.1 endimensionell geometri
function [Coords, Edof, nnod, nel, L] = geom(x0, x_fin, nel)
nnod = nel+1;
L=(x_fin-x0)/nel;
Coords = x0:L:x_fin;
Edof = zeros(nel,nel);

for i = 1:nel
Edof(i,1) = i;
Edof(i,2) = i;
Edof(i,3) = i+1;
end

end