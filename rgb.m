clc;
clear all;
close all;
im = imread('C:\Users\dpand\OneDrive\Desktop\matlab imh7d4.jpg');
%imshow(im)
im = imresize(im,[256,256]); 
[m,n,k] = size(im);
im_R(m,n,k)= uint8(0);
im_G(m,n,k)= uint8(0);
im_B(m,n,k)= uint8(0);
im_R(1:m,1:n,1)= im(1:m,1:n,1);
im_G(1:m,1:n,2)= im(1:m,1:n,2);
im_B(1:m,1:n,3)= im(1:m,1:n,3);
subplot(2,2,1); imshow(im); title('color image');
subplot(2,2,2); imshow(im_R); title('Red channel of color image');
subplot(2,2,3); imshow(im_G); title('Green channel of color image');
subplot(2,2,4); imshow(im_B); title('BLUE CHANNE OF color image');
