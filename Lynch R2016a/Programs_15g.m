% Programs 15g - Bifurcation diagram for the Duffing equation.
% Chapter 15 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.

% Make sure Programs 15f is in your directory.
% This models a beam oscillating between two magnets. 
% Please see: E. Ott, Chaos in Dynamical Systems (2nd edition), 
% Cambridge University Press, 2002. 
clear
global Gamma;
Max=120;step=0.001;interval=Max*step;a=1;b=0;
% Ramp the amplitude up.
for n=1:Max
    Gamma=step*n;
    [t,x]=ode45('Programs_15f',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rup(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
% Ramp the amplitude down.
for n=1:Max
    Gamma=interval-step*n;
    [t,x]=ode45('Programs_15f',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rdown(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
hold on
rr=step:step:interval;
plot(rr,rup)                % Ramp up in blue.
plot(interval-rr,rdown,'r') % Ramp down in red.
hold off
fsize=15;
axis([0 .12 0 2])
xlabel('\Gamma','FontSize',fsize)
ylabel('r','FontSize',fsize)
title('Bistable Loop Duffing System','FontSize',fsize)

% End of Programs 15g.