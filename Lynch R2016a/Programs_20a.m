% Programs 20a - Hodgkin-Huxley equations spike train.
% Chapter 20 - Binary Oscillator Computing.
% Copyright Springer 2014. Stephen Lynch.

% Hodgkin Huxley Integtrator with Synaptic Coupling - no time delay.
clear;
figure
I=6.3;
Gna=120;Gk=36;Gl=0.3;
Vna=50;Vk=-77;Vl=-54.402;C=1;

y=zeros(1,4);  

HHdeq=@(t,y) [(I-Gna*y(2)^3*y(3)*(y(1)-Vna)-Gk*y(4)^4*(y(1)-Vk)-Gl*(y(1)-Vl))/C; 0.1*(y(1)+40)/(1-exp(-0.1*(y(1)+40)))*(1-y(2))-4*exp(-0.0556*(y(1)+65))*y(2); 0.07*exp(-0.05*(y(1)+65))*(1-y(3))-1/(1+exp(-0.1*(y(1)+35)))*y(3);0.01*(y(1)+55)/(1-exp(-0.1*(y(1)+55)))*(1-y(4))-0.125*exp(-0.0125*(y(1)+65))*y(4)];

[t,ya]=ode45(HHdeq,[0 100],[15,0.01,0.5,0.4]);

figure(1)
plot(t,ya(:,1))
axis([0 100 -80 40])
fsize=15;
set(gca,'XTick',0:20:100,'FontSize',fsize)
set(gca,'YTick',-80:20:40,'FontSize',fsize)
xlabel('Time (ms)','FontSize',fsize)
ylabel('Voltage (mV)','FontSize',fsize)
figure(2)
subplot(3,1,1)
plot(t,ya(:,2),'k')
set(gca,'XTick',0:20:100,'FontSize',fsize)
set(gca,'YTick',0:1,'FontSize',fsize)
xlabel('Time (ms)','FontSize',fsize)
ylabel('m(V)','FontSize',fsize)
subplot(3,1,2)
plot(t,ya(:,3),'r')
set(gca,'XTick',0:20:100,'FontSize',fsize)
set(gca,'YTick',0:1,'FontSize',fsize)
xlabel('Time (ms)','FontSize',fsize)
ylabel('h(V)','FontSize',fsize)
subplot(3,1,3)
plot(t,ya(:,4),'g')
set(gca,'XTick',0:20:100,'FontSize',fsize)
set(gca,'YTick',0:1,'FontSize',fsize)
xlabel('Time (ms)','FontSize',fsize)
ylabel('n(V)','FontSize',fsize)

% End of Programs 20a.
