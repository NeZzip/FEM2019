%% Labb 2

D=eye(2);
K=zeros(56,56);
f=zeros(56,1);
for i=1:length(ex)
    Ke = flw2te(ex(i,:),ey(i,:),1,D);
    K = assem(edof(i,:), K, Ke);
end

%bc_tot = [bc; bc3; bc4; bcarc];
figure(2)
a=solveq(K,f,bc);
%[ex,ey]=coordxtr(edof,coord,dof,nelm)
ed=extract(edof,a)
colormap(hot)
fill(ex',ey',ed')





