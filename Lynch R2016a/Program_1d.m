% Program 1d - Solution curves to different ODEs.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Birkhaser 2014. Stephen Lynch.

clear;figure;
hold on
deqn=@(t,x) [x(2);-25*x(1)];
[t,xa]=ode45(deqn,[0 10],[1 0]);
plot(t,xa(:,1),'r'); % Plot a red curve.
clear
deqn=@(t,x) [x(2);-2*x(2)-25*x(1)];
[t,xb]=ode45(deqn,[0 10],[1 0]);
plot(t,xb(:,1),'b'); % Plot a blue curve.
legend('harmonic motion','damped motion')
xlabel('time','Fontsize',15);
ylabel('displacement','Fontsize',15);
hold off

% End of Program 1d.