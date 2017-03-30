% Programs 16c - Hopf Bifurcation. Function file.
% Chapter 16 - Bifurcations of Nonlinear Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.

% Animation of Hopf bifurcation of a limit cycle from the origin.
% NOTE: Run Programs 16d NOT Programs 16c.

function sys=Programs_16c(~,x)
global mu
X=x(1,:);  
Y=x(2,:);  
% Define the system.
P=Y+10.*X.*(0.1-Y.^2);        
Q=-X+mu; 

sys=[P;Q]; 

% End of Programs 16c.

