%% setup parameters for 1c and 1d
R = 2;
E = 10;
L = 50*10^(-3);
R=2;
L=0.05;

Ts=0.002;
Udc=100;

%% 1c
% Run simulinjk LAB1A

plot(tdc,irldc)
grid on
legend("irldc")

%% 1d
%se till att köra LAb1A och Lab 1D innan detta
plot(tdc,irldc)
grid on
hold on
plot(tpwm,irlpwm)
legend("irldc","irlpwm")

%% 1f GÖR FÖRST ANNARS FUNKAR DET INTE
OLDirlpwm = irlpwm;
OLDtpwm = tpwm;
Ts=0.004;
%kör LAB1D igen

%% 1f 
plot(OLDtpwm,OLDirlpwm)
hold on
grid on
plot(tpwm,irlpwm)

legend("Ts = 0.002","Ts = 0.004")

hold off


%% 2C Parameters
U=100;
Ra=3;
La=0.03;
psim=1.1;
J=0.05;
D=0.002;

%kör lab2c

%% 2D Parameters 

U=100;
Ra=3;
La=0.03;
psim=1.1;
J=0.05;
D=0.002;

Ts=0.002;
Udc=200;

%kör lab2D

%% 2D plot

plot(tdc,iadc)
hold on
grid on
plot(tpwm,iapwm)
legend("iadc","iapwm")
hold off

figure

plot(tdc,wdc)
hold on
grid on
plot(tpwm,wpwm)
legend("wdc","wpwm")
hold off

%% 3 initsiering 
E=10;
R=2;
L=0.05;

Uftopp=sqrt(2)*230;
Ts=0.001;
Udc=400;

%% 3.a
plot(tpwm,upwm)
figure
plot(tpwm,irlpwm)
figure
plot(tpwm,uSin)
hold on
plot(tpwm,irlpwm)
grid on
legend("Spänning","ström")
hold off

%% 4
t=0:0.001:0.02;
ua=325*sin(2*pi*50*t);
ub = 325*sin(2*pi*50*t - (2*pi)/3);
uc = 325*sin(2*pi*50*t - (4*pi)/3);

u = (2/3).*(ua + ub.*exp(i*(2*pi/3)) + uc.*exp(i*(4*pi/3)))

showvector(real(u),imag(u))
%% 4a
subplot(2,1,1);
plot(t,real(u))
hold on
plot(t,imag(u))
plot(t,abs(u))
grid on
legend("real","imag","abs")
hold off

subplot(2,1,2);
plot(t,atan(imag(u)./real(u)))

%% 4b
u = (2/3).*(ua + uc.*exp(i*(2*pi/3)) + ub.*exp(i*(4*pi/3)))
subplot(2,1,1);
plot(t,real(u))
hold on
plot(t,imag(u))
plot(t,abs(u))
grid on
legend("real","imag","abs")
hold off

subplot(2,1,2);
plot(t,atan(imag(u)./real(u)))

showvector(real(u),imag(u))

%% 5 init
Rs=0.5;
Ls=0.087;
uftopp=325;
f=50;



%% 5 c
x1 = psis(:,1);
x2 = psis(:,2);
plot(tout,sqrt(x1.^2 + x2.^2))
hold on 
plot(tout,psis)
hold off

%% 5 showvector
showvectors(uspsis)

%% 5 d init
Rs=0.5;
Ls=0.087;
Ts=0.0002;
Udc=600;
uftopp=325;
f=50;

%% 5g

x1 = psis(:,1);
x2 = psis(:,2);
plot(upsis.time,sqrt(x1.^2 + x2.^2))
hold on 
plot(upsis.time,psis)
hold off

%% 5h init

Rs=0.5;
Ls=0.087;
Ts=0.2;
Udc=600;
uftopp=325;
f=50;

%% 5h
showvectors(uspsis)

%% 6

Rs=0.5;
Ls=0.087;
Ts=0.0002;
Udc=600;
uftopp=325;
f=25;


