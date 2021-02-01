h1=18.4;             % Höjd över marken i m fasledare 1
h2=18.4;             % Höjd över marken i m fasledare 2
h3=18.4;             % Höjd över marken i m fasledare 3

d1=-12;              % Avstånd från mittlinjen i m fasledare 1
d2=0;                % Avstånd från mittlinjen i m fasledare 2
d3=12;               % Avstånd från mittlinjen i m fasledare 3

itopp=sqrt(2)*1000;  % Toppvärde på ström i A
u0=4e-7*pi;          % Permeabilitet för vakuum Vs/Am

tt=0:5e-4:0.02;      % En växelspänningsperiod är 20 ms
xx=-100:2:100;         % Avstånd i m från ledningens mittlinje
w=2*pi*50;           % Strömmens vinkelfrekvens i rad/s vid 50 Hz

for m=1:length(tt),
    for n=1:length(xx),
       t=tt(m);
       x=xx(n);
          % Ögonblicksvärde på strömmen i de tre faserna vid tiden tt(m)
       i1=itopp*sin(w*t);
       i2=itopp*sin(w*t-2*pi/3);
       i3=itopp*sin(w*t-4*pi/3);

       % Bidrag till B-fältet i punkten (xx(n),0) från fasledare 1
       B1=u0/(2*pi*((x-d1)^2+h1^2))*(h1+j*(x-d1))*i1;

       % Bidrag till B-fältet i punkten (xx(n),0) från fasledare 2
       B2=u0/(2*pi*((x-d2)^2+h2^2))*(h2+j*(x-d2))*i2;

       % Bidrag till B-fältet i punkten (xx(n),0) från fasledare 3
       B3=u0/(2*pi*((x-d3)^2+h3^2))*(h3+j*(x-d3))*i3;

       Btot(m,n)=B1+B2+B3;  % B-fältet i punkten (xx(n),0) vid tiden tt(m)
    end
end

Btotabs=abs(Btot);  % Riktningen på fältet ointressant. Beräkna beloppet.
Bmax=max(Btotabs);  % Sök maxvärdet under växelströmmens period
Bmax=Bmax/1e-6;     % Skala om till uT

subplot(2,1,1)
plot(d1,h1,'ro',d2,h2,'ro',d3,h3,'ro','linewidth',3)
str1=['1:(' num2str(d1) ',' num2str(h1) '), '];
str2=['2:(' num2str(d2) ',' num2str(h2) '), '];
str3=['3:(' num2str(d3) ',' num2str(h3) ')'];
text([d1 d2 d3]+1,[h1 h2 h3],char(['1' '2' '3'])');
axis([-100 100 0 43.6])
grid
ylabel('m över marken')
title(['Ledningens geometri  ' str1 str2 str3])

subplot(2,1,2)
plot(xx,Bmax)
set(gca,'xlim',[-100 100])
grid
text(0,1.1*max(Bmax),['Bmax: ' num2str(max(Bmax)) ' uT'])
title('Magnetiskt fält på marken under kraftledning')
xlabel('Avstånd från ledningens mittlinje')
ylabel('B [uT]')