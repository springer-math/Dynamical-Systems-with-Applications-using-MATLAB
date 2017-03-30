% Programs 20b - Transfer function.
% Chapter 20 - Binary Oscillator Computing.
% Copyright Springer 2014. Stephen Lynch.
% Binary oscillator half adder.
% Run Programs_20d.

function ans=Programs_20b(y,m,p);
ans=1./(1+exp(m*y+p));

% End of Programs 20b.