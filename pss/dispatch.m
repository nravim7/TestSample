clc;
clear all;
pd = 800;
SumF = 0;
Sump = 0;
F = [500 5.3 0.004;
     400 5.5 0.006;
     200 5.8 0.008;]
a = F(:,1);
b = F(:,2);
c = F(:,3);
x = length(F);
lambda = (pd+sum(b./(2*c)))/sum(1./(2*c));
for i=1:x
    P(i) = (lambda-b(i))/(2*c(i));
    Sump = Sump+P(i);
    F(i) = a(i)+b(i)*P(i)+c(i)*P(i)^2;
    SumF = SumF+F(i);
end
Sump;
SumF;