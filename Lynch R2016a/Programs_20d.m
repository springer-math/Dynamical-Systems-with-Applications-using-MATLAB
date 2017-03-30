% Programs 20d - Binary oscillator half adder.
% Chapter 20 - Binary Oscillator Computing.
% Copyright Springer 2014. Stephen Lynch.
% Ensure Programs 20b and 20c are in the same directory.
% See Figure 20.5(b).

clear;
tmax=500;
tspan=[0 tmax];
e1=0.8; e2=0.45; i1=-1.5;
mat=[0 0 e1 e2
     0 0 e1 e2
     0 0 0  0
     0 0 i1 0]
 I=[0 0 0 0
    0 1 0 0
    1 0 0 0
    1 1 0 0];
str=1;
I=I*str;
m=-100; p=60;
yinit=zeros(size(mat,1)*2,1);
a=0.1; b=0.1; c=0.1;
noise=0;
nodes=size(I,2);
ylong=[];tlong=[];
for loop1=1:size(I,1)
    [t,y]=ode45(@Programs_20c,tspan,yinit,[],[a b c],I(loop1,:)',mat,noise,m,p);
    yinit=y(end,:)';
    tlong=[tlong;t+(loop1-1)*tmax];
    ylong=[ylong;y];
end
figure(1)
for loop=1:nodes
    subplot(nodes,1,loop)
    plot(tlong,ylong(:,2*loop-1))
    axis([tlong(1) tlong(end) -1 1.5])
end

% End of Pragrams 20d.
