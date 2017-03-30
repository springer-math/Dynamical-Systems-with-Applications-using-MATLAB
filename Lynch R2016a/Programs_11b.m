% Programs 11b - Limit cycle, Fitzhugh-Nagumo system.
% Chapter 11 - Limit Cycles.
% Copyright Springer 2014. Stephen Lynch.

% Limit cycle of a Fitzhugh-Nagumo system (Figure 11.3).
% This is a simple model of an integrate and fire neuron.
clear
hold on
epsilon=0.01;omega=0.112;theta=0.14;gamma=2.54;
sys = @(t,x) [-x(1)*(x(1)-theta)*(x(1)-1)-x(2)+omega;epsilon*(x(1)-gamma*x(2))]; 
vectorfield(sys,-1:.2:2,1:.2:3);
[t,xs] = ode45(sys,[0 100],[1 .1]);
plot(xs(:,1),xs(:,2));
x=-0.4:0.01:1.2;
plot(x,x./gamma,'r',x,omega-x.*(x-theta).*(x-1),'m')
hold off
axis([-0.4 1.2 0 0.4])
fsize=15;
set(gca,'XTick',-0.4:0.2:1.2,'FontSize',fsize)
set(gca,'YTick',0:0.1:0.4,'FontSize',fsize)
xlabel('u(t)','FontSize',fsize)
ylabel('v(t)','FontSize',fsize)
hold off

% End of Programs 11b.