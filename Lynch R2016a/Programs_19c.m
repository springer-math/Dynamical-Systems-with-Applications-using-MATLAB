% Program 19c - Synchronization between two Lorenz systems.
% Chapter 19 - Chaos Control and Synchronization.
% Copyright Springer 2014. Stephen Lynch.

% Synchronization (Figure 19.7).

clear; figure;
sigma=16;b=4;r=45.92;
LorenzLorenz=@(t,x)([sigma*(x(2)-x(1));-x(1)*x(3)+r*x(1)-x(2);x(1)*x(2)-b*x(3);-x(1)*x(5)+r*x(1)-x(4);x(1)*x(4)-b*x(5)]);
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,xa]=ode45(LorenzLorenz,[0 100],[15 20 30 10 20],options);
plot(xa(:,2),xa(:,4))
fsize=15;
set(gca,'XTick',-40:20:40,'FontSize',fsize)
set(gca,'YTick',-40:20:40,'FontSize',fsize)
xlabel('x_2(t)','FontSize',fsize)
ylabel('y_2(t)','FontSize',fsize)

% End of Programs 19c.