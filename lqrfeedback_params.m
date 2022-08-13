
qeq=0
h1eq=0
h2eq=0
A=[-1/9 1/9;1/9 -0.3889]
B=[100;0]
C=[0 1]
Q=C'*C
Q=[ 0 0; 0 1 ]
%Q=[ 0 0; 1 0 ]
R=1

Q=[ 1 0; 0 1 ]
P= ctrb(A,B);
M= obsv(A,C);
[k,p,e]=lqr(A,B,Q,R,0)
k1=k(1)
k2=k(2)
A11=A(1,1)
A12=A(1,2)
A21=A(2,1)
A22=A(2,2)
B1=B(1)
sim("statefeedback",10);
t=ans.tout
x1=ans.simout.data(:,1)
x2=ans.simout.data(:,2)
x3=ans.simout.data(:,3)
subplot(311)
plot(t,x1);
xlabel("time")
ylabel("x1")
grid on;
title("Height of tank1(h1)")
hold on;
subplot(312)
plot(t,x2);
title("Height of tank2(h2)")
xlabel("time")
ylabel("x2")
grid on;
hold on;
subplot(313)
plot(t,x3);
title("qin")
grid on;
hold on;