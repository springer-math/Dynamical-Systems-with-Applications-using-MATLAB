% Program 1c - Two curves on one graph.
% Chapter 1 - A Tutorial Introduction to MATLAB and the Symbolic Math Package.
% Copyright Birkhaser 2014. Stephen Lynch.

% Tex symbols can be plotted within a figure window.
clear all
fsize=15;
x=0:.1:7;
figure;
plot(x,2*x./5,x,-x.^2/6+x+7/6)
text(1,2,'\leftarrow curve 1','Fontsize',fsize)
text(2.6,1,'\leftarrow line 1','Fontsize',fsize)
xlabel('x','Fontsize',fsize);
ylabel('y','Fontsize',fsize)
title('Two curves on one plot','Fontsize',fsize)

% End of Program 1c.