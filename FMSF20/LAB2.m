%% 2 Modell för skördeutfall
n = 7;
p = 0.75;
U = rand(1,n)
U<=p
X = sum(U<=p)

figure(1)
stem(U)
refline(0,p)
%% 2 med Bin
n=9;
p=0.75;
N = 100
X = binornd(n,p,N,1)
antal =hist(X,0:n)
antal(4)
sum(X==3)
figure(2)
bar(0:n,antal)
xlabel('antal frön som gror')
ylabel('antal tillfällen')
bar(0:n,[antal/N; binopdf(0:n,n,p)]') %
xlabel('antal fröon som gror')
ylabel('andel påsar')
legend('simulering','exakt','best','nortwest')

%% 2.2
n = 85;
p = 0.4;
np = n*p 
npq = np*(1-p)
x = linspace(np-4*sqrt(npq),np+4*sqrt(npq));
figure(3)
stairs(0:n,binocdf(0:n,n,p))
hold on
plot(x,normcdf(x,np,sqrt(npq)))  
hold off

%% 2.3
figure(4)
subplot(211)
bar(0:2, binopdf(0:2,2,.75))
title('Antal frön som gror')
ylabel('p(x)')
mu = 10;
x = 0:4*mu;
figure(4)
subplot(234)
bar(x, poisspdf(x, 0*mu))
title('Skörd om 0 frön gror')
ylabel('p(y|x=0)')
subplot(235)
bar(x, poisspdf(x, 1*mu))
title('Skörd om 1 frön gror')
ylabel('p(y|x=1)')
subplot(236)
bar(x, poisspdf(x, 2*mu))
title('Skörd om 2 frön gror')
ylabel('p(y|x=2)')

%% 2.3.FORT
mu = 10;
x = 0:4*mu;
pY = poisspdf(x,0*mu)*binopdf(0,2,0.75);      %fallet X=0
pY = pY + poisspdf(x,1*mu)*binopdf(1,2,0.75); %fallet X=1
pY = pY + poisspdf(x,2*mu)*binopdf(2,2,0.75); %fallet X=2
figure(5)
bar(x,pY)
xlabel('antal nya frÖn')

%% 2.3 Allmänt fall
n=6; p=0.2; mu=6;
y = 0:100;
pY = zeros(size(y));   % Fyll f ̈orst p_Y(y) med nollor.
for k=0:n              % Uppdatera p_Y(y) f ̈or varje k
    pY=pY+poisspdf(y,mu*k)*binopdf(k,n,p);
end

figure(6)
bar(y,pY)
xlabel('antal nya frön')

%% Harvest
harvest(7,0.75,10)

%% 3 Centrala gränsvärdesatsen
mu = 1.6;                     % det sanna my-v ̈ardet
x = poissrnd(mu,48,1)        % en 2x1-matris med Po(my)-slumptal
xmedel = mean(x)            % medelv ̈ardet

%% 3.2
mu = 1.6;
n = 48;        % antal termer i medelv ̈ardet
M = 1000;     % antal simuleringar
x = poissrnd(mu,n,M)   % n x M-matris. x1 i f ̈orsta raden, xn i sista.
xmedel = mean(x)       % M st medelv ̈arden
subplot(2,1,1)
histogram(x(1,:),0:15)     % histogram  ̈over de Mst x1-v ̈ardena
subplot(2,1,2)
histogram(xmedel,0:0.5:15) % histogram  ̈over de Mst x-medelv ̈ardena


