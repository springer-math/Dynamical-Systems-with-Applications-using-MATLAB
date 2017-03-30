% Programs 11a - Limit cycle of van der Pol.
% Chapter 11 - Limit Cycles.
% Copyright Springer 2014. Stephen Lynch.

% Limit cycle of a van der Pol system (Figure 11.2).
% IMPORTANT - ensure vectorfield.m is in directory.
clear;figure;
sys = @(t,x) [x(2);-x(1)-5*x(2)*((x(1))^2-1)]; 
hold on;
vectorfield(sys,-3:.3:3,-10:1.3:10);
[t,xs] = ode45(sys,[0 30],[2 1]);
plot(xs(:,1),xs(:,2))      
hold off;
axis([-3 3 -10 10])
fsize=15;
set(gca,'XTick',-3:1:3,'FontSize',fsize)
set(gca,'YTick',-10:5:10,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off

% End of Programs 11a.