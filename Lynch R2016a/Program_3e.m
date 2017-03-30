% Program 3e - Bifurcation Diagram of the Gaussian Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2014. Stephen Lynch.

% Bifurcation diagram (Figure 3.21(a)).
clear;
itermax=160;alpha=8;min=itermax-9;
for beta=-1:0.001:1
    x=0;
    xo=x;
    for n=1:itermax
        xn=exp(-alpha*xo^2)+beta;
        x=[x xn];
        xo=xn;
    end
    plot(beta*ones(10),x(min:itermax),'.','MarkerSize',1)
    hold on
end

fsize=15;
set(gca,'xtick',[-1:0.5:1],'FontSize',fsize)
set(gca,'ytick',[-1:0.5:1],'FontSize',fsize)
xlabel('{\beta}','FontSize',fsize)
ylabel('\itx','FontSize',fsize)
hold off

% End of Program 3e.