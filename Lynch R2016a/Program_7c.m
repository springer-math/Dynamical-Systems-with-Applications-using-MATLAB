% Program 7c - Low pass filter on Lena.jpg.
% Chapter 7 - Image Processing.
% Ensure that lena.jpg is in the same directory.
% Figure 7.6.
% Copyright Springer 2014. Stephen Lynch.

input_lena = double(rgb2gray(imread('lena.jpg')));
% First the processing
fft_lena = fft2(input_lena);
% This bit builds an idea lowpass filter.
u = 0:(size(fft_lena,1)-1);
v = 0:(size(fft_lena,2)-1);
idx = find(u > size(fft_lena,1)/2);
u(idx) = u(idx)-size(fft_lena,1);
idy = find(v > size(fft_lena,2)/2);
v(idy) = v(idy)-size(fft_lena,2);
[V,U] = meshgrid(v,u);
D = sqrt(U.^2 + V.^2);
% The only parameter - 50 is the highest freqency allowed through.
filter = double(D <= 50);
fft_lena_blurr = fft_lena.*filter;
lena_blurred = ifft2(fft_lena_blurr);
% The images.
lena_baa = [input_lena lena_blurred];
lena_baa = 255*mat2gray(lena_baa);
fft_lena_abs = log(abs(fftshift(fft_lena)));
fft_lena_blurr_abs = log(abs(fftshift(fft_lena_blurr)));
lena_ffts = [fft_lena_abs fft_lena_blurr_abs];
lena_ffts(lena_ffts==-Inf) = 0;
lena_ffts = 255*mat2gray(lena_ffts);
lena_combined = [lena_baa ; lena_ffts];
figure;
imagesc(lena_combined); axis image; colormap gray; axis off;

% End of Program 7c.