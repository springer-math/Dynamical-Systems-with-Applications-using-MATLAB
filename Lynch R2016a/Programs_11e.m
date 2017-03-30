% Programs 11e - Perturbation Methods
% Chapter 11 - Limit Cycles.
% Copyright Springer 2014. Stephen Lynch.

% See Example 7. Apologies - there is an error in the book.
% Solve the Order epsilon ODE.
deq1=dsolve('D2x+x=cos(t)^3','x(0)=0','Dx(0)=0')
O_epsilon=simplify(deq1)

% Numerical solution of the Duffing equation.
epsilon=0.01;
deq2=@(t,x) [x(2);-x(1)+epsilon*x(1)^3];
[t,xa]=ode23s(deq2,[0,100],[1,0]);

% Plot x_N-x_0: see Figure 11.9. 
subplot(2,1,1)
plot(t,xa(:,1)-cos(t))
title('Duffing equation, one term expansion error: x_N-x_0','FontSize',fsize)
ylim=0.5;
axis([0 100 -ylim ylim])
fsize=15;
set(gca,'XTick',0:10:100,'FontSize',fsize)
set(gca,'YTick',-ylim:0.2:ylim,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
subplot(2,1,2)
plot(t,xa(:,1)-cos(t)-epsilon*(cos(t)/8 - cos(t).^3/8 + (3*t.*sin(t))/8))
title('Duffing equation, two term expansion error: x_N-x_P','FontSize',fsize)
ylim=0.18;
axis([0 100 -ylim ylim])
fsize=15;
set(gca,'XTick',0:10:100,'FontSize',fsize)
set(gca,'YTick',-ylim:0.09:ylim,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)

% End of Programs 11e.