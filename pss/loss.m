clear all;
clc;
ydata = [1 2 0.02 0.06 0.03;
         1 3 0.08 0.24 0.025;
         2 3 0.06 0.18 0.02;]
from = ydata(:,1);
to = ydata(:,2);
rse = ydata(:,3);
xse = ydata(:,4);
zse = rse+j*xse;
yse = 1./zse;
ysh = ydata(:,4);
nl = length(from);
vin = [1.06 0;
       1.045 -0.049;
       1.0245 -0.0872;]

ybus = [6.25-j*18.695 -5+j*15 -1.25+j*3.75;
        -5+j*15 6.667-j*19.95 -1.667+j*5;
        -1.25+j*3.75 -1.667+j*5 2.9167-j*8.705;]
m = vin(:,1);
theta = vin(:,2);
vbus = m.*(cos(theta)+j*sin(theta));
ibus = ybus*vbus;
sbus = vbus.*conj(ibus);

for p=1:nl
    I(p) = (vbus(from(p))-vbus(to(p)))*yse(p)+(vbus(from(p))*j*ysh(p));
    si(p) = (vbus(from(p)))*conj(I(p));
    J(p) = (vbus(to(p))-vbus(from(p)))*yse(p)+(vbus(to(p))*j*ysh(p));
    sj(p) = (vbus(to(p)))*conj(J(p));
    s(p) = si(p)+sj(p);
end
sloss = sum(s)
ploss = real(sloss)
qloss = imag(sloss)
