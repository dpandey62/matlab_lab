clc;
clear all;
close all;
im= imread('cameraman.tif');

m1=[1,1,1;0,0,0;-1,-1,-1;];
m2=[1,0,-1;1,0,-1;1,0,-1;];
m3=[1,1,0;1,0,-1;0,-1,-1;];
m4=[0,-1,-1;1,0,-1;1,1,0];

im1=conv2(im,m1);
im2=conv2(im,m2);
im3=conv2(im,m3);
im4=conv2(im,m4);
im5=0.25*(im1+im2+im3+im4);


subplot(3,2,1); imshow(uint8(im));
subplot(3,2,2); imshow(uint8(im1));
subplot(3,2,3); imshow(uint8(im2));
subplot(3,2,4); imshow(uint8(im3));
subplot(3,2,5); imshow(uint8(im4));
subplot(3,2,6); imshow(uint8(im5));
