clc
clear all;
close all
A=0.01;
h1eq=0;
h2eq=0;
qeq=0;
ro1=1.262*10e-4;
ro2=1.262*10e-4;
ro=1;
g=9.81;
Ao=[-1/9 1/9;1/9 -0.3889];
B=[100;0];
C=[0 1];
A11=Ao(1,1);
A12=Ao(1,2);
A21=Ao(2,1);
A22=Ao(2,2);
B1=B(1);
h1_init=1;
h2_init=1;
Ac=[Ao zeros(2,1);-C 0]
Bc=[B;0];
poles=[-10,-100];
%poles=[-1+j*2,-1-j*2]
k=acker(Ao,B,poles)
%case:1
k1=1.095;
k2=87.12;
Ke1=43.22;
Ke2=1.5;
% %case:2
% k1=0.0151
% k2=0.3997
% Ke1=8981.12
% Ke2=109.51
sim("observernonlindesign");
t=ans.tout;
x1=ans.system.data(:,1);
x2=ans.system.data(:,2);
z1=ans.observer.data(:,1);
z2=ans.observer.data(:,2);
subplot(211)
plot(t,x1,"linewidth",1.5);
hold on;
plot(t,z1,"linewidth",1.5);
grid on;
legend("actual","estimated")
xlabel("time")
ylabel("x1")
title("Height of tank1(h1)")
hold on;
subplot(212)
plot(t,x2,"linewidth",3);
hold on;
plot(t,z2,"linewidth",1.5);
title("Height of tank2(h2)")
legend("actual","estimated");
xlabel("time");
ylabel("x2");
grid on;
hold off;





