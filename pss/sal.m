clear all;
clc;
vt = input('enter vt\n');
p = input('enter power\n');
xd = input('enter xd\n');
xq = input('enter xq\n');
pf = input('enter pf\n');
I = (p/(vt*pf));
pfi = acos(pf);
Ia = I*(cos(pfi)-j*sin(pfi));
Ed = vt+j*Ia*xq;
delta = angle(Ed);
Iq = abs(Ia)*(cos(delta+pfi))*(cos(delta)+j*sin(delta));
Id = abs(Ia)*sin(delta+pfi)*(cos(delta-(pi/2))+j*sin(delta-(pi/2)));
Ef = Ed+j*Id*(xd-xq);
pmax = ((abs(Ef)*abs(vt))/xd);
Prmax = (((vt^2)*(xd-xq)/(2*xd*xq)));
X = input('select 1 for salient and 2 for non-salient\n')
switch X
    case 1
        del=0:0.01:(pi);
        line(del,0);
        plot(del*180/pi, pmax*sin(del),'r',del*180/pi, Prmax*sin(2*del),'g', (pmax*sin(del)+Prmax*sin(2*del)),'b');
        reg = (abs(Ef-vt)/vt)*100;
    case 2
        del=0:0.01:(pi);
        line(del,0);
        plot(del*180/pi, pmax*sin(del),'r');
        reg = (abs(Ef-vt)/vt)*100;
    otherwise
        disp('\n\n Invalid selection')
end

