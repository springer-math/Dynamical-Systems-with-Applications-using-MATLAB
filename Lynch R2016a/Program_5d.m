% Program_5d - Animated Bifurcation Diagram for a Nonlinear Optical Resonator.
% Chapter 5 - Electromagnetic Waves and Optical Resonators.
% Copyright Springer 2014. Stephen Lynch.

% Animated bifurcation diagram for a simple fiber ring resonator.
clear
halfN=7999;N=2*halfN+1;N1=1+halfN;
E1=zeros(1,N);E2=zeros(1,N);
Esqr=zeros(1,N);Esqr1=zeros(1,N);ptsup=zeros(1,N);
for j = 1:60 
    F(j) = getframe;
format long;
C=0.345913;
% kappa increases from 0.001 to 0.06.
E1(1)=0;kappa=0.001*j;Pmax=60;phi=0;

% Ramp the power up
for n=1:halfN
    E2(n+1)=E1(n)*exp(1i*(C*abs(E1(n))^2-phi));
    E1(n+1)=1i*sqrt(1-kappa)*sqrt(n*Pmax/N1)+sqrt(kappa)*E2(n+1);
    Esqr(n+1)=abs(E1(n+1))^2;
end

% Ramp the power down
for n=N1:N
    E2(n+1)=E1(n)*exp(1i*(C*abs(E1(n))^2-phi));
    E1(n+1)=1i*sqrt(1-kappa)*sqrt(2*Pmax-n*Pmax/N1)+sqrt(kappa)*E2(n+1);
    Esqr(n+1)=abs(E1(n+1))^2;
end

for n=1:halfN
    Esqr1(n)=Esqr(N+1-n);
    ptsup(n)=n*Pmax/N1;
end

% Plot the bifurcation diagrams
fsize=15;

hold  
plot(ptsup(1:halfN),Esqr(1:halfN),'.','MarkerSize',1);
plot(ptsup(1:halfN),Esqr1(1:halfN),'.','MarkerSize',1);
xlabel('Input Power','FontSize',fsize);
ylabel('Output Power','FontSize',fsize);
axis([0 60 0 70])
title('Bifurcation Diagram for an Optical Resonator','FontSize',fsize);
 
 F(j) = getframe;

end

movie(F,5);

% End of Program_5d.

