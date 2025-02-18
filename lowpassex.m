clc;
close all;
clear all;
I=imread('cameraman.tif');
A = fft2(double(I)); % compute FFT of the grey image
A1=fftshift(A); % frequency scaling
% Rectangular Filter Response Calculation
[M N]=size(A); % image size
Lo(M,N)=0;
R=5; % also check for R=5; filter size parameter
Lo(M/2-R:M/2+R,M/2-R:M/2+R)=1;
J=A1.*Lo;
J1=ifftshift(J);
B1=ifft2(J1);

hi = 1-Lo;
K=A1.*hi;
K1=ifftshift(K);
B2=ifft2(K1);




X=0:N-1;
Y=0:M-1;
[X Y]=meshgrid(X,Y);
% %----visualizing the results----------------------------------------------
%
subplot(3,2,1);
imshow(I);colormap gray;
title('original image','fontsize',14);
subplot(3,2,2);
imshow(abs(A1),[-12 300000]), colormap gray;
title('fft of original image','fontsize',14);

subplot(3,2,3);
imshow(uint8(B1)); colormap gray;
title('low pass filtered image','fontsize',14);
subplot(3,2,5);
 mesh(X,Y,Lo);
 axis([ 0 N 0 M 0 1]);
 h=gca;
 get(h,'FontSize');
 set(h,'FontSize',14);
 title('Rectangular LPF H(f)','fontsize',14);
 subplot(3,2,4);
imshow(uint8(B2)); colormap gray;
title('High pass filtered image','fontsize',14);
subplot(3,2,6);
 mesh(X,Y,hi);
 axis([ 0 N 0 M 0 1]);
 h=gca;
 get(h,'FontSize');
 set(h,'FontSize',14);
 title('Rectangular HPF(f)','fontsize',14);