% Program 9a - Phase Portrait (Fig. 9.8(a)).
% Chapter 9 - Planar Systems.
% Copyright Springer 2014. Stephen Lynch.

% Phase portrait of a linear system of ODE's.
% IMPORTANT - vectorfield.m must be in same directory.
clear;figure;
sys = @(t,x) [2*x(1)+x(2);x(1)+2*x(2)]; 
vectorfield(sys,-3:.25:3,-3:.25:3)
     hold on
     for x0=-3:1.5:3
         for y0=-3:1.5:3
            [ts,xs] = ode45(sys,[0 5],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     for x0=-3:1.5:3
         for y0=-3:1.5:3
            [ts,xs] = ode45(sys,[0 -5],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     hold off
axis([-3 3 -3 3])
fsize=15;
set(gca,'XTick',-3:1:3,'FontSize',fsize)
set(gca,'YTick',-3:1:3,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off

% End of Program 9a.