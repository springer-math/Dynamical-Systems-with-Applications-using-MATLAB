% Program 7b - Chaotic attractor and power spectrum.
% Chapter 7 - Image Processing.
% Copyright Springer 2014. Stephen Lynch.

a=1;b=0.3;
N=100000;x=zeros(1,N);y=zeros(1,N);
x(1)=0.1;y(1)=0.1;
for n=1:N
    x(n+1)=1-a*(y(n))^2+b*x(n);
    y(n+1)=x(n);
end 
subplot(2,1,1);
plot(x(10:N),y(10:N),'.','MarkerSize',1);
fsize=15;axis([-1 2 -1 2]);
set(gca,'XTick',-1:1:2,'FontSize',fsize)
set(gca,'YTick',-1:1:2,'FontSize',fsize)
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)

% Power spectrum (Figure 7.5(f)).
f=-N/2+1:N/2;
freq=f*2/N;
Pow=abs(fft(x,N).^2);
subplot(2,1,2);
plot(freq,log(Pow));
Pmax=20;axis([0 1 -10 Pmax]);
set(gca,'XTick',0:0.5:1,'FontSize',fsize)
set(gca,'YTick',-10:5:20,'FontSize',fsize)
xlabel('Frequency (Hz)');
ylabel('log(Power)');

% End of Program 7b.