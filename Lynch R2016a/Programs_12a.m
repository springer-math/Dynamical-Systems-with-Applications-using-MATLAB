% Programs 12a - Surface and Contour Plots. 
% Chapter 12 - Hamiltonian Systems, Lyapunov Functions, and Stability.
% Copyright Springer 2014. Stephen Lynch.

% The double-well potential (Fig. 12.5(b)).
figure;
fsize=15;
ezsurfc('-x^2/2+x^4/4+y^2/2',[-1.5,1.5]);
set(gca,'XTick',-1.5:0.5:1.5,'FontSize',fsize)
set(gca,'YTick',-1.5:0.5:1.5,'FontSize',fsize)
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Surface and contour plot')
figure
ezcontour('-x^2/2+x^4/4+y^2/2',[-1.5,1.5]);
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Contour plot')

% End of Programs 12a.