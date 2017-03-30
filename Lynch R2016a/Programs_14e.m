% Programs 14e - Time series of Belousov-Zhabotinski reaction.
% Chapter 14 - Three-Dimensional Autonomous Systems and Chaos.
% See URL: http://online.redwoods.edu/INSTRUCT/darnold/DEProj/Sp98/Gabe/bzreact.htm
% Copyright Springer 2014. Stephen Lynch.

fsize=15;
A=0.06;B=0.02;f=1;
k1=1.28;k2=2.4e6;k3=33.6;k4=3e3;kc=1;
epsilon=(kc*B)/(k3*A);
epsilondash=(2*kc*k4*B)/(k2*k3*A);
q=(2*k1*k4*B)/(k2*k3*A);
BZReaction=@(t,x) [(q*x(2)-x(1)*x(2)+x(1)*(1-x(1)))/epsilon;(-q*x(2)-x(1)*x(2)+f*x(3))/epsilondash;x(1)-x(3)]; 
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,xa]=ode23s(BZReaction,[0 50],[0,0,0.1],options);
subplot(3,1,1)
plot(t,xa(:,1))
title('Relative concentration of bromous acid','Fontsize',fsize)
xlabel('t','Fontsize',fsize);
ylabel('x(t)','Fontsize',fsize);
subplot(3,1,2)
plot(t,xa(:,2),'r')
title('Relative concentration of bromide ions','Fontsize',fsize)
xlabel('t','Fontsize',fsize);
ylabel('y(t)','Fontsize',fsize);
subplot(3,1,3)
plot(t,xa(:,3),'m')
title('Relative concentration of cerium ions','Fontsize',fsize)
xlabel('t','Fontsize',fsize);
ylabel('z(t)','Fontsize',fsize);

% End of Programs 14e.

