% Programs 15a - Solving an initial value problem.
% Chapter 15 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.

% Solve a differential equation (Example 1).
r=dsolve('Dr=-r^2','r(0)=1');

% List the first eight returns on the segment {y=0, 0<x<1}.
% There may be small inaccuracies due to the numerical solution.
deq=inline('[-(r(1))^2]','t','r');
options=odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,returns]=ode45(deq,0:2*pi:16*pi,1);
returns

% End of Programs 15a.