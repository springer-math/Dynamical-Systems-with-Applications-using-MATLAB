% Programs 16f - Small-amplitude limit cycles for Example 1(ii).
% Chapter 16 - Local and Global Bifurcations.
% Copyright Springer 2015
% Please see Example 1 on page 339. The degree of F(x) is three and
% the degree of g(x) is three.
% The limit cycles are shown in blue. Please see Programs 16e.
clear;figure;
hold on;
plot(0,0,'b.','MarkerSize',15)
a1=0.01;a2=1;b2=1;a3=1/3;b3=2;xmin=-1;xmax=1;ymin=-0.6;ymax=1.3;
options=odeset('RelTol',1e-8,'AbsTol',1e-8);
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 100],[0.28 0],options);
plot(xs(:,1),xs(:,2),'r');
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 100],[0.295 0],options);
plot(xs(:,1),xs(:,2),'b','LineWidth',4);
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 100],[0.3 0],options);
plot(xs(:,1),xs(:,2),'r');
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 100],[0.48 0],options);
plot(xs(:,1),xs(:,2),'r');
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 50],[0.519 0],options);
plot(xs(:,1),xs(:,2),'b','LineWidth',4);
sys = @(t,x) [x(2)-a1*x(1)-a2*x(1)^2-a3*x(1)^3;-x(1)-a1*x(2)-b2*x(1)^2-b3*x(1)^3]; 
[t,xs] = ode45(sys,[0 50],[0.54 0],options);
plot(xs(:,1),xs(:,2),'r');
axis([xmin xmax ymin ymax])
fsize=15;
set(gca,'XTick',xmin:0.2:xmax,'FontSize',fsize)
set(gca,'YTick',ymin:0.2:ymax,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
title('Two small-amplitude limit cycles (in blue) of a Lienard system')
hold off;
% End of Programs 16f.