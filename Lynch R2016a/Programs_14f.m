% Chapter 14 - Three-Dimensional Autonomous Systems and Chaos.
% Programs_14f - Chua bifurcation animation.
% Copyright Birkhauser 2014. Stephen Lynch.

% Watch a video of the real circuit: https://www.youtube.com/watch?v=9RPfuoVRakM

% From: Broucke ME, One parameter bifurcation diagram for Chua's circuit,
% IEEE Trans. on Circuits and Systems 34 (1987).

clear;clc;figure;mo=-1/7;m1=2/7;
for j=1:500; 
   F(j) = getframe;a=(8+j*0.006); % Set a between 8 and 11.
Chua=@(t,x) [a*(x(2)-(m1*x(1)+(mo-m1)/2*(abs(x(1)+1)-abs(x(1)-1))));...
             x(1)-x(2)+x(3);-15*x(2)]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xb]=ode45(Chua,[0 100],[1.96,-0.0519,-3.077],options);
plot3(xb(:,1),xb(:,2),xb(:,3))
title('Chua`s Bifurcations')
axis([-3 3 -0.5 0.5 -4 4]);
fsize=15;
xlabel('x(t)','Fontsize',fsize);
ylabel('y(t)','Fontsize',fsize);
zlabel('z(t)','FontSize',fsize);
view([20,50]);
F(j) = getframe;
end
movie(F,5);

% End of Programs_14f.