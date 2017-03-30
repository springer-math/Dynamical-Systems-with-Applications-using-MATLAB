% Programs 15k - Bifurcation diagram for the Duffing equation.
% Chapter 15 - Poincare Maps and Nonautonomous Systems in the Plane.
% Copyright Springer 2014. Stephen Lynch.

% Make sure Programs 15fff is in your directory.
% This models the nonlinear pendulum depicted in Figure 15.8.
clear
global Gamma;
Max=100;step=0.01;interval=Max*step;a=0.01;b=0;
% Ramp the amplitude up.
for n=1:Max
    Gamma=step*n;
    [t,x]=ode23s('Programs_15fff',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rup(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
% Ramp the amplitude down.
for n=1:Max
    Gamma=interval-step*n;
    [t,x]=ode23s('Programs_15fff',0:(2*pi/1.25):(4*pi/1.25),[a,b]);
    a=x(2,1);
    b=x(2,2);
    rdown(n)=sqrt((x(2,1))^2+(x(2,2))^2);
end
hold on
rr=step:step:interval;
plot(rr,rup,'b','Linewidth',5)                % Ramp up in blue.
plot(interval-rr,rdown,'r','Linewidth',2)    % Ramp down in red.
hold off
fsize=15;
axis([0 1 0 5])
set(gca,'XTick',0:0.2:1,'FontSize',fsize)
set(gca,'YTick',0:1:5,'FontSize',fsize)
xlabel('\Gamma','FontSize',fsize)
ylabel('r','FontSize',fsize)
%title('Bistable Loop Duffing System','FontSize',fsize)
