%% init
L = 95* 10^(-3);
R = 40;

%% Ploting after the simulation is run
plot(out.tout,out.i1*10)
grid on
hold on
plot(out.tout,out.u1)

legend('i1*10','u1')
hold off

u1Max = 311.1228;
i1Max = 6.4319;

deltat = 0.002;

%% 2 Effekt
plot(out.tout,out.u1.*out.i1)


%% 3 b

plot(out.tout,out.u1)
hold on
plot(out.tout,out.u2)
plot(out.tout,out.u3)
grid on

plot(out.tout, out.u1 + out.u2 + out.u3)
 
legend('u1','u2','u3','sum')
hold off

%% 3 e

plot(out.tout,out.u1)
hold on
grid on

plot(out.tout, out.u1 - out.u2)
 
legend('u1','u1 - u2')
hold off

ampu1 =  max(out.u1)
ampu1u2 = max(out.u1 - out.u2)

%% 3 f

p1 = out.u1 .* out.i1;
p2 = out.u2 .* out.i2;
p3 = out.u3 .* out.i3;

plot(out.tout,p1)
hold on 
plot(out.tout,p1+p2)
plot(out.tout,p1+p2+p3)
legend('p1','p1+p2','p1 + p2 +p3')
hold off

%% 4
plot(tout,u_over_brytare)
hold on
plot(tout,uelnat)
plot(tout,usg)

legend('u_over_brytare','uelnat','usg')
hold off



