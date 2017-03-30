% Program 8b - Solution Curves, Initial Value Problem.
% Chapter 8 - Differential Equations.
% Copyright Springer 2014. Stephen Lynch.

% Solve the differential equation and plot 2 solution curves.
% Figure 8.3.
clear;figure;
deqn1=@(t,P) P(1)*(100-P(1))/1000;
[t,P1]=ode45(deqn1,[0 100],50);
[t1,P2]=ode45(deqn1,[0 100],150);
hold on
plot(t,P1(:,1))
plot(t1,P2(:,1))
axis([0 100 0 200])
fsize=15;
set(gca,'XTick',0:20:100,'FontSize',fsize)
set(gca,'YTick',0:50:200,'FontSize',fsize)
xlabel('t','FontSize',fsize)
ylabel('P','FontSize',fsize)
hold off

% End of Program 8b.