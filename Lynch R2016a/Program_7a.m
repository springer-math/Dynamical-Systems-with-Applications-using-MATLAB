% Program 7a - Signal corrupted with noise and power spectrum.
% Chapter 7 - Image Processing.
% Copyright Springer 2014. Stephen Lynch.

Fs = 1000;                    % Sampling frequency.
T = 1/Fs;                     % Sample time.
L = 1000;                     % Length of signal.
t = (0:L-1)*T;                % Time vector.
Amplitude1=0.7;Amplitude2=1;Frequency1=50;Frequency2=120;
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid.
x = Amplitude1*sin(2*pi*Frequency1*t) + Amplitude2*sin(2*pi*Frequency2*t); 
y = x + 2*randn(size(t));     % Sinusoids plus noise.
subplot(2,1,1)
plot(Fs*t(1:50),y(1:50))
fsize=15;
axis([0 50 -6 8]);
set(gca,'xtick',0:10:50,'FontSize',fsize)
set(gca,'ytick',-6:2:8,'FontSize',fsize)
xlabel('time ms','FontSize',fsize)
ylabel('y','FontSize',fsize)


NFFT = 2^nextpow2(L);              % Next higher power of 2 from length of y.
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);   % Linearly spaced vectors.
subplot(2,1,2)                     % Plot single-sided amplitude spectrum.
plot(f,2*abs(Y(1:NFFT/2+1))) 
fsize=15;
axis([0 500 0 1]);
set(gca,'xtick',0:100:500,'FontSize',fsize)
set(gca,'ytick',0:0.5:1,'FontSize',fsize)
xlabel('Frequency (Hz)','FontSize',fsize)
ylabel('|Y(f)|','FontSize',fsize)

% You can read off the amplitudes and frequencies from the fft.

% End of Program_7a.