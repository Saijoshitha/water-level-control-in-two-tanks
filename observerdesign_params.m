

tsim=10
qeq=0
h1eq=0
h2eq=0
A=[-1/9 1/9;1/9 -0.3889]
B=[100;0]
C=[0 1]
A11=A(1,1)
A12=A(1,2)
A21=A(2,1)
A22=A(2,2)
B1=B(1)
h1_init=0
h2_init=1
h1obs_init=5
h2obs_init=1
Ac=[A zeros(2,1);-C 0]
Bc=[B;0]
poles=[-10,-100]
k=acker(A,B,poles)
% %case:1
% k1=1.095
% k2=86.15
% Ke1=43.22
% Ke2=1.5
%case:2
k1=0.0151
k2=0.3997
Ke1=9091
Ke2=109.51
sim("observerbaseddesign",10);
t=ans.tout
x1=ans.system.data(:,1)
x2=ans.system.data(:,2)
z1=ans.observer.data(:,1)
z2=ans.observer.data(:,2)
subplot(211)
plot(t,x1,"linewidth",1);
hold on;
plot(t,z1,"linewidth",1.5);
hold on;
grid on;
legend("actual","estimated")
xlabel("time")
ylabel("x1")
title("Height of tank1(h1)")
hold on;
subplot(212)
plot(t,x2,"linewidth",1);
hold on;
plot(t,z2,"linewidth",1.5);
hold on;
title("Height of tank2(h2)")
legend("actual","estimated")
xlabel("time")
ylabel("x2")
grid on;




