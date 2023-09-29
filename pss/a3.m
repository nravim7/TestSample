clc;
clear all;
ydata = [1 2 0.02 0.06 0.03;
         1 3 0.08 0.24 0.025;
         2 3 0.06 0.18 0.02;]
from = ydata(:,1);
to = ydata(:,2);
rse = ydata(:,3);
xse = ydata(:,4);
zse = rse+j*xse;
yse = 1./zse;
ysh = ydata(:,5)
nl = length(from);
nb = max(max(from,to));
yp = zeros(nl,nl);
a = zeros(nl,nb);
nrow = nl+1;
for m=1:nl
    a(m,from(m)) = 1;
    a(m,to(m)) = -1;
    a(nrow,from(m)) = 1;
    a(nrow+1,to(m)) = 1;
    yp(m,m) = yse(m);
    yp(nrow,nrow) = j*ysh(m);
    yp(nrow+1,nrow+1) = j*ysh(m);
    nrow = nrow+2;
end
ybus = transpose(a)*yp*a;
ybus