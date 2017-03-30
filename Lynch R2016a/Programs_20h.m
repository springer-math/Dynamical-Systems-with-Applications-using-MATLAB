% Programs 20g - Animation of a Josephson junction threshold oscillator.
% Chapter 20 - Binary Oscillator Computing
% Copyright Springer 2014. Stephen Lynch.

% Physically, Josephson junctions oscillate 100,000,000 times faster
% than biological neurons and can be built on the nanoscale!

clear;clc;figure;BJ=0.6;
for n=1:200; 
   F(n) = getframe;kappa=0.6+n*0.001; % Set kappa between 0.6 and 0.8.
Josephson_Junction=@(t,x) [x(2);kappa-BJ*x(2)-sin(x(1))]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xb]=ode45(Josephson_Junction,[0 100],[0,3],options);
plot(xb(:,1),xb(:,2))
title('JJ Threshold Oscillator')
axis([0 50 -1 3]);
fsize=15;
xlabel('\phi','Fontsize',fsize);
ylabel('\Omega','Fontsize',fsize);
F(n) = getframe;
end
movie(F,5);

% End of Programs_20h.