% Program 9b - Phase Portrait of a Nonlinear System (Fig. 9.12).
% Chapter 9 - Planar Systems.
% Copyright Springer 2014. Stephen Lynch.

% Phase portrait of a nonlinear system of ODE's.
% IMPORTANT - ensure vectorfield.m is in same directory.
clear;figure;
sys = @(t,x) [1-x(2);1-x(1)^2]; 
xmin=-3;xmax=4;sep=0.9;
vectorfield(sys,xmin:0.5:xmax,xmin:0.5:xmax);
     hold on
     for x0=xmin:sep:xmax
         for y0=xmin:sep:xmax
            [ts,xs] = ode45(sys,[0 10],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     for x0=xmin:sep:xmax
         for y0=xmin:sep:xmax
            [ts,xs] = ode45(sys,[0 -10],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
    % ezplot('y=0');ezplot('x=0');
     hold off
axis([xmin xmax xmin xmax])
fsize=15;title('Hamiltonian')
set(gca,'XTick',xmin:sep:xmax,'FontSize',fsize)
set(gca,'YTick',xmin:sep:xmax,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off

% End of Program 9b.