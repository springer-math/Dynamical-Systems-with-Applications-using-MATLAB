% Programs 13b - Finding critical points and bifurcation curve.
% Chapter 13 - Bifurcation Theory.
% Copyright Springer 2014. Stephen Lynch.

% Critical points for y=mu*x-x^3.
% Symbolic Math toolbox required.
syms x y
[x,y]=solve('mu*x-x^3','-y')

% Plot a simple bifurcation diagram (Fig. 13.11).
r=0:.01:2;
mu=.28*r.^6-r.^4+r.^2;
plot(mu,r)
fsize=15;
xlabel('\mu','Fontsize',fsize);
ylabel('r','Fontsize',fsize);

% End Programs 13b.