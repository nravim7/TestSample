clear all;
clc;
Sr_LL = input('Enter power in KVA\n');
Vr_LL = input('entet voltage in KV\n');
pf = input('enter pf\n');
line_length = input('enter line length\n');
z = input('enter impedence\n');
Sr = Sr_LL*1e3/3;
Vr = Vr_LL*1e3/(sqrt(3));
Pr = Sr*pf;
Ir = Sr/Vr*(pf-j*sin(acos(pf)));
Z = z*line_length;
A=1; B=Z; C=0; D=1;

Vs = A*Vr+B*Ir;
Is = C*Vr+D*Ir;
Ps = real(Vs*conj(Is));
eff = (Pr*100)/Ps;
reg = (real(Vs/A)-Vr)*100/real(Vr);

fprintf('efficiency %d\n',eff);
fprintf('regulation %d\n',reg);
