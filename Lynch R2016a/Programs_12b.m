% Programs 12b: Lyapunov function for a Hopfield network.
% Chapter 12 - Hamiltonian Systems, Lyapunov Functions, and Stability.
% Copyright Springer 2014. Stephen Lynch.
% See Figure 12.8(a) and (b).

figure
fsize=15;
ezsurf('-(x^2+y^2)-4*(log(cos(pi*x/2))+log(cos(pi*y/2)))/(0.7*pi^2)',[-1,1,-1,1]);
title('Surface plot','FontSize',fsize)
axis([-1 1 -1 1 -0.5 1])
set(gca,'XTick',-1:0.5:1,'FontSize',fsize)
set(gca,'YTick',-1:0.5:1,'FontSize',fsize)
xlabel('a_1','FontSize',fsize)
ylabel('a_2','FontSize',fsize)

figure
x=-1:.01:1;y=-1:.01:1;[X,Y]=meshgrid(x,y);
Z=-(X.^2+Y.^2)-4*(log(cos(pi*X/2))+log(cos(pi*Y/2)))./(0.7*pi^2);
contour(X,Y,Z,-1:.01:1)
title('Contour plot','FontSize',fsize)
set(gca,'XTick',-1:0.5:1,'FontSize',fsize)
set(gca,'YTick',-1:0.5:1,'FontSize',fsize)
xlabel('a_1','FontSize',fsize)
ylabel('a_2','FontSize',fsize)

% End of Programs 12b.