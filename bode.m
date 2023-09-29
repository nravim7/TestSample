clear all
Z=[ ];
P=[0,-2,-20];
K=80;
system=zpk(Z,P,K);
bode(system);
margin(system);
[gm,pm,wcg,wcp]=margin(system)