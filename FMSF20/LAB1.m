%% Excersize 2.1
%Change the path to the correct one
%load('.\Files\kroppsTemp.mat')
load('/home/johngregory/Git/MatLab/FMSF20/Files/kroppsTemp.mat')

whos T

%% Figur 1 histogram
histogram(T(:,1))

%% Figur 2
figure(2)
plot(T(:,1),'.')

%% Figur 3
figure(3)
subplot(211)
histogram( T(T(:,2)==1,1) )
subplot(212)
histogram( T(T(:,2)==2,1) )

%% Figur 4
figure(4)
boxplot(T(:,1), T(:,2))

%% Figur 5
figure(5)
plot(sort(T(:,1)),1:size(T,1),'.')
ratio = mean(T(:,1)<=36.8)


%% Figur 6
figure(6)
stairs(sort(T(:,1)),(1:size(T(:,1),1))/size(T(:,1),1))
grid on

%% 2.2
mu = mean(T(:,1))
sigma = std(T(:,1))

figure(1)
histogram(T(:,1), 'Normalization', 'pdf')
x = linspace(35.5,38.5,1e2);
hold on
plot(x,normpdf(x,mu,sigma))
hold off

%% Fördelningar
histfit(T(:,1))

%% 2.3
mu = mean(T(:,1));
sigma = std(T(:,1));
data = normrnd(mu, sigma, 1, 2000);
figure(7)
histogram(data, 'Normalization', 'pdf') 
hold on
plot(x,normpdf(x,mu,sigma))
hold off

figure(8)
stairs(sort(data),(1:length(data))/length(data),'.-')
hold on
plot(x,normcdf(x,mu,sigma))
hold off
grid on

%% 2.4
mu = mean(T(:,1));
sigma = std(T(:,1));
norminv(1-0.02,mu,sigma)

%% 2.5
x = linspace(0,10,1000);

figure(1)
plot(x,normpdf(x,4,1))
%plot(x,normpdf(x,2,0.5))
hold on
%plot(x,normpdf(x,7,0.5))
%plot(x,normpdf(x,5,2))
%plot(x,normpdf(x,5,0.2))
plot(x,normpdf(x,2,1))
hold off
xlabel('x')
title('Täthetsfunktioner, f(x)')
%% Födelning
figure(2)
plot(x,normcdf(x,2,0.5))
hold on
plot(x,normcdf(x,7,0.5))
plot(x,normcdf(x,5,5))
plot(x,normcdf(x,5,0.2))
hold off
xlabel('x')
title('Fördelningsfunktioner, F(x)')

%% inversmetod
u = rand(1000,1);
histogram(u)
