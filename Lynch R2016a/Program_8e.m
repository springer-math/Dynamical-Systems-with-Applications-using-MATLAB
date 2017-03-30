% Program 8e - Numerical against series solution.
% Chapter 8 - Differential Equations.
% Copyright Birkhauser 2013. Stephen Lynch.

% The van der Pol equation (Figure 8.6).
hold on
deqn=@(t,x) [x(2);-x(1)-2*(x(1)^2-1)*x(2)];
[t,xa]=ode45(deqn,[0 50],[5 0]);
plot(t,xa(:,1),'r')
axis([0 0.08 4.994 5])
fsize=15;
set(gca,'xtick',0:0.02:0.08,'FontSize',fsize)
set(gca,'ytick',4.994:0.001:5,'FontSize',fsize)
xlabel('t','FontSize',fsize)
ylabel('x(t)','FontSize',fsize)
ezplot('5-5*t^2/2+40*t^3-11515*t^4/24+9183*t^5/2',[0 0.08])
title('')
hold off

% End of Program 8e.