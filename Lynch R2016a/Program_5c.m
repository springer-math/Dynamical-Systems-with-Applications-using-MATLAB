% Chapter 5 - Electromagnetic Waves and Optical Resonators.
% Program_5c - Bifurcation Diagram for a Nonlinear Optical Resonator.
% Copyright Birkhauser 2014. Stephen Lynch.

% Bifurcation diagram for a simple fiber resonator (Figures 5.13 & 5.16(a)).
clear
halfN=9999;N=2*halfN+1;N1=1+halfN;
format long;E1=zeros(1,N);E2=zeros(1,N);
Esqr=zeros(1,N);Esqr1=zeros(1,N);ptsup=zeros(1,N);
C=0.345913;
E1(1)=0;kappa=0.0225;Pmax=60;phi=0;

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
subplot(2,1,1)
plot(Esqr(1:N),'.','MarkerSize',1)
xlabel('Number of Ring Passes','FontSize',fsize);
ylabel('Output','FontSize',fsize);

subplot(2,1,2)
hold on
plot(ptsup(1:halfN),Esqr(1:halfN),'.','MarkerSize',1);
plot(ptsup(1:halfN),Esqr1(1:halfN),'.','MarkerSize',1);
xlabel('Input Power','FontSize',fsize);
ylabel('Output Power','FontSize',fsize);
hold off

% End of Program_5c.
