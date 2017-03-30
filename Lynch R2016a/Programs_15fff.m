% Programs 15f. Function file for Duffing system.
% Chapter 15 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.
% Run Programs_15k.

function xdot=Programs_15j(t,x)
% The Duffing System.
global Gamma;
xdot(1)=x(2);
xdot(2)=-x(1)-0.1*x(2)-0.1*(x(1))^3+Gamma*cos(1.25*t);
xdot=[xdot(1);xdot(2)];