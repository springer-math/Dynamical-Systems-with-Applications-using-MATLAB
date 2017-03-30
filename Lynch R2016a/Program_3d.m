% Program 3d - Bifurcation Diagram of the Logistic Map.
% Chapter 3 - Nonlinear Discrete Dynamical Systems.
% Copyright Springer 2014. Stephen Lynch.

% Plot a bifurcation diagram (Figure 3.15).
% Plot 30 points for each r value.
clear
itermax=100;
finalits=30;finits=itermax-(finalits-1);
for r=0:0.001:4
    x=0.4;xo=x;
    for n=2:itermax
        xn=r*xo*(1-xo);
        x=[x xn];
        xo=xn;
    end
    plot(r*ones(finalits),x(finits:itermax),'r.','MarkerSize',1)
    hold on
end
fsize=15;
set(gca,'XTick',0:1:4,'FontSize',fsize)
set(gca,'YTick',0:0.2:1)
xlabel('{\mu}','FontSize',fsize)
ylabel('\itx','FontSize',fsize)
hold off

% End of Program 3d.