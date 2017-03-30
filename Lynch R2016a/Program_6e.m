% Program_6e - A Dq spectrum of dimensions.
% Chapter 6 - Fractals and Multifractals.
% Copyright Springer 2014. Stephen Lynch.

% A Dq curve for a multifractal Cantor set (Figure 6.16(b)).
hold on
ezplot('(log((1/9)^x+(8/9)^x))/(log(3))*(1/(1-x))',[-20,0.99])
ezplot('(log((1/9)^x+(8/9)^x))/(log(3))*(1/(1-x))',[0.99,20])
axis([-20 20 0 2])
fsize=15;
set(gca,'XTick',-20:10:20,'FontSize',fsize)
set(gca,'YTick',0:.4:2,'FontSize',fsize)
xlabel('\itq','FontSize',fsize)
ylabel('\it{D_q}','FontSize',fsize)
title(' ')
hold off

% End of Program_6e.