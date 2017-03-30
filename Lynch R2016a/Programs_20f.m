% Programs 20f - Bifurcation diagram for a Josephson Junction.
% Chapter 20 - Binary Oscillator Computing
% Copyright Springer 2014. Stephen Lynch.

% Make sure Programs 20e is in your directory.
clear
figure
global kappa;a=0;b=0;mins=120;
Max=400;step=0.005;interval=Max*step;tmax=160;
% Ramp kappa up.
for n=1:Max
    kappa=step*n;
    options=odeset('RelTol',1e-4,'AbsTol',1e-4);
    [t,x]=ode45('Programs_20e',[0 tmax],[a,b],options);
    s=size(x(:,1),1);
    a=0;b=x(s,2);
    kappaup(n)=0.6*(max(x(mins:s,2))+min(x(mins:s,2)))/2;
end
% Ramp kappa down.
for n=1:Max
    kappa=interval-step*n;
    options=odeset('RelTol',1e-4,'AbsTol',1e-4);
    [t,x]=ode45('Programs_20e',[0 tmax],[a,b],options);
    s=size(x(:,1),1);
    a=0;b=max(x(:,2));
    kappadown(n)=0.6*(max(x(mins:s,2))+min(x(mins:s,2)))/2;
end
hold on
rr=step:step:interval;
plot(kappaup,rr,'b','LineWidth',10)
plot(kappadown,interval-rr,'r','LineWidth',3)
hold off
fsize=15;
axis([0 2 0 2])
xlabel('\langle \eta \rangle','FontSize',fsize)
ylabel('\kappa','FontSize',fsize)
set(gca,'XTick',0:1:2,'FontSize',fsize)
set(gca,'YTick',0:1:2,'FontSize',fsize)

% End of Programs 20f.