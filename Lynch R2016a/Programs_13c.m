% Programs 13c - Hopf Bifurcation. Function file.
% Chapter 13 - Bifurcations of Nonlinear Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.

% Animation of Hopf bifurcation of a limit cycle from the origin.
% NOTE: Run Programs_13d NOT Programs_13c.

function sys=Programs_13c(~,x)
global mu
X=x(1,:);  
Y=x(2,:);  

% Define the system.
P=Y+mu*X-X.*Y.^2;        
Q=mu*Y-X-Y.^3; 

sys=[P;Q]; 
% End of Programs 13c.

