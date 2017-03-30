% Programs 20g - Pinched Hysteresis of a Memristor (Figure 20.10(b)).
% Chapter 20 - Binary Oscillator Computing
% Copyright Springer 2014. Stephen Lynch.

clear
figure
eta=1;L=1;Roff=70;Ron=1;p=10;T=20;w0=0.6;
deqn=@(t,w) (eta*(1-(2*w-1)^(2*p))*sin(2*pi*t/T))/(Roff-(Roff-Ron)*w); 
options = odeset('RelTol',1e-8,'AbsTol',1e-8);
[t,wa]=ode45(deqn,[0 T],w0,options);
plot(sin(2*pi*t/T),sin(2*pi*t/T)./(Roff-(Roff-Ron)*wa(:,1)))
axis([-1 1 -0.5 0.5])
fsize=15;
set(gca,'XTick',-1:0.5:1,'FontSize',fsize)
set(gca,'YTick',-0.5:0.5:0.5,'FontSize',fsize)
xlabel('Voltage','FontSize',fsize)
ylabel('Current','FontSize',fsize)

% End of Programs 20g.