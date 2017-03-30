% Programs 16e - Small-amplitude limit cycle for Example 1(i).
% Chapter 16 - Local and Global Bifurcations.
% Copyright Springer 2015
% Please see Example 1 on page 339. The degree of F(x) is three and
% the degree of g(x) is two.
% The unstable limit cycle is in blue.
clear;figure;
hold on;
plot(0,0,'b.','MarkerSize',15)
a1=0.01;a2=1;b2=1;a3=1/3;xmin=-0.4;xmax=0.4;ymin=-0.4;ymax=0.5;
options=odeset('RelTol',1e-8,'AbsTol',1e-8);
% A trajectory inside the limit cycle.
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2]; 
[t,xs] = ode45(sys,[0 50],[0.24 0],options);
plot(xs(:,1),xs(:,2),'r');
% The approximate unstable limit cycle.
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2]; 
[t,xs] = ode45(sys,[0 50],[0.2465 0],options);
plot(xs(:,1),xs(:,2),'b','LineWidth',2);
% A trajectory outside the limit cycle.
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2]; 
[t,xs] = ode45(sys,[0 50],[0.25 0],options);
plot(xs(:,1),xs(:,2),'r');
axis([xmin xmax ymin ymax])
fsize=15;
set(gca,'XTick',xmin:0.2:xmax,'FontSize',fsize)
set(gca,'YTick',ymin:0.2:ymax,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
title('One small-amplitude limit cycle (in blue) of a Lienard System')
hold off;
% End of Programs 16e.