
qeq=0
h1eq=0
h2eq=0
h1init=0
h2init=1
A=[-1/9 1/9;1/9 -0.3889]
B=[100;0]
poles_cl=[-10 -100]
k=acker(A,B,poles_cl)
k1=1.09
k2=86.1515
A11=A(1,1)
A12=A(1,2)
A21=A(2,1)
A22=A(2,2)
B1=B(1)
sim("statefeedback",100);
t=ans.tout
x1=ans.simout.data(:,1)
x2=ans.simout.data(:,2)
subplot(211)
plot(t,x1);
title("x1")
grid on;
hold on;
subplot(212)
plot(t,x2);
title("x2")
grid on;
hold on;