% Programs 20e - Josephson junction system.
% Chapter 20 - Binary Oscillator Computing
% Copyright Springer 2014. Stephen Lynch.
% Run Programs 20f.
% Make sure Programs 20f is in your directory.

function xdot=Programs_20e(t,x)
% The JJ system.
% Run Programs_20f.
global kappa;
xdot(1)=x(2);
xdot(2)=kappa-0.6*x(2)-sin(x(1));
xdot=[xdot(1);xdot(2)];

% End of Programs 20e.