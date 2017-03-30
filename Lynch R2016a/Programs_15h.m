% Programs 15h - Bifurcation diagram showing ramp up and ramp down.
% Chapter 15 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2015. Stephen Lynch.

% This models a beam oscillating between two magnets. 
% Please see: E. Ott, Chaos in Dynamical Systems (2nd edition), 
% Cambridge University Press, 2002. 

% Make sure Programs_15ff is in your directory.
% Figure 15.14
clear
figure
global Gamma;
Max=4500;step=0.0001;interval=Max*step;a=1;b=0;
% Ramp the amplitude up.
for n=1:Max
    Gamma=step*n;
    [t,x]=ode45('Programs_15ff',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rup(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
% Ramp the amplitude down.
for n=1:Max
    Gamma=interval-step*n;
    [t,x]=ode45('Programs_15ff',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rdown(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
hold on
rr=step:step:interval;
plot(rr,rup,'.','MarkerSize',1)                
plot(interval-rr,rdown,'r.','MarkerSize',1) 
hold off
fsize=15;
axis([0 .45 0 2])
xlabel('\Gamma','FontSize',fsize)
ylabel('r','FontSize',fsize)
title('Hysteresis in the Duffing System','FontSize',fsize)

% End of Programs 15h.