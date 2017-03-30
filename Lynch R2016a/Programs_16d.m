% Programs 16d - Homooclinic bifurcation animation.
% Chapter 16 - Local and Global Bifurcations.
% Copyright Springer 2014. Stephen Lynch.

% Animation of Hopf bifurcation of a limit cycle from the origin.
% NOTE: Programs_16c must be in the same directory as Programs_16d.
clear
global mu
for j = 1:60 
    F(j) = getframe;
    mu=j/100-0.3;   % mu goes from -0.3 to 0.3.
options = odeset('RelTol',1e-8,'AbsTol',1e-8);
x0=0.1;y0=0;
[t,x]=ode45(@Programs_16c,[0 20],[x0 y0],options);  
plot(x(:,1),x(:,2),'b');  
axis([-1 1 -1 1])
fsize=15;
set(gca,'XTick',-1:0.2:1,'FontSize',fsize)
set(gca,'YTick',-1:0.2:1,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize) 
 F(j) = getframe;
end

movie(F,5)

% End of Programs 16d.

