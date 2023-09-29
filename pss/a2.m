clear all;
clc;
Vr_ll = input('enter voltage in kv\n');
Ir = input('enter recieving current in A\n');
admittance = input('enter shunt admittance\n');
impedence = input('enter impedence\n');
line_length = input('enter line length\n');

Vr = Vr_ll/(sqrt(3));

y = admittance*line_length;
z = impedence*line_length;
A = ((y*z)/2)+1;
B = z*(((y*z)/4)+1);
C= y;
D = A;

Po = real(Vr*conj(Ir));
Vs = A*Vr+B*Ir;
Is = C*Vr+D*Ir;
Ps = real(Vs*conj(Is));
eff = (Po*100)/Ps;
reg = ((abs(Vs/A)-abs(Vr))*100)/abs(Vr);
fprintf('efficiency %d\n',eff);
fprintf('regulation %d\n',reg);

