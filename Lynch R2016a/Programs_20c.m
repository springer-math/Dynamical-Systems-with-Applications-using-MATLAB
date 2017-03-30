% Programs 20c - Fitzhugh Nagumo Binary Oscillator Half-Adder.
% Run Programs 20d.

function cols=Programs_20c(t,y,pars,I,mat,noise,m,p);
a=pars(1);b=pars(2);c=pars(3);
mat=mat';
nodes=floor(length(y)/2);
cols=zeros(nodes*2,1);
u=y(1:2:end);
v=y(2:2:end);
cols(1:2:end)=-u.*(u-a).*(u-1)-v+I;
cols(2:2:end)=c*(u-b*v);
cols(1:2:end)=cols(1:2:end)+mat*Programs_20b(v,m,p);
cols=cols+randn(length(cols),1)*noise;
return;

% End of Programs 20c.
