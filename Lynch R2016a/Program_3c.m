% Program 3c - Computing a Lyapunov Exponent for the Logistic Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2014. Stephen Lynch.

% Lyapunov exponent when mu=4 (Table 3.1).
clear;
mu=4;x=0.1;xo=x;
itermax=49999;
    for n=1:itermax
        xn=mu*xo*(1-xo);
        x=[x xn];
        xo=xn;
    end

Liap_exp=vpa(sum(log(abs(mu*(1-2*x))))/itermax,6)

% End of Program 3c.
