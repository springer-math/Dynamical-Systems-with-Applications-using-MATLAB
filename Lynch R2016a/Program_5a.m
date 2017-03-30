% Program 5a: Determining fixed points of period one.
% Chapter 5 - Electromagnetic Waves and Optical Resonators.
% Figure 5.10b: Intersecting curves.
% Use the data cursor to find the points.
% Copyright Springer 2014. Stephen Lynch.

figure
hold on
syms x y
A=2.2;B=0.15;
p1=ezplot(A+B*x*cos(x^2+y^2)-B*y*sin(x^2+y^2)-x,[0 4 -4 4]);
p2=ezplot(B*x*sin(x^2+y^2)+B*y*cos(x^2+y^2)-y,[0 4 -4 4]);
set(p1,'color','red');set(p2,'color','blue')
fsize=15;
title('Intersection of curves','FontSize',fsize)
set(gca,'XTick',0:1:4,'FontSize',fsize)
set(gca,'YTick',-4:2:4,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off

% End of Program 5a.