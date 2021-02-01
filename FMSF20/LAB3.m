%% Del 2
radon =load('radon200.dat')
K = 0.103;
g3rum = mean(radon)/K;
d3rum = sqrt(g3rum/(10*K));
I3rum = [g3rum-norminv(1-0.05/2)*d3rum; g3rum+norminv(1-0.05/2)*d3rum]

%% Del 3
skattningar(1, 3, 5, 25, 'muskatt')

%% Del 3 10
skattningar(1, 3, 5, 25, 'konfint')

%%Del 4 
gamma0 = 200;
mu03rum = 10*K*gamma0           % väntev ̈ardet f ̈or summan n ̈ar H0  ̈ar sann
y3rum = sum(radon)              % summorna i de tre rummen
P3rum = poisscdf(y3rum,mu03rum) % P(Y_i <= y_i)

%% Del 4 13
gamma0 = 200;
mu0hus = 30*K*gamma0
yhus = sum(y3rum)
Phus = poisscdf(yhus,mu0hus)

%% Del 5
figure(1)
styrkefkn(1.9, 12, 0, 0.05, '!=', 1.1)
figure(2)
styrkefkn(1.9, 12, 0, 0.05, '<')
figure(3)
styrkefkn(1.9, 12, 0, 0.05, '>')






