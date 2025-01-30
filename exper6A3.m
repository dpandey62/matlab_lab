clc;
clear all;
close all;
im= imread('cameraman.tif');

m1=[1,1,1;1,-8,1;1,1,1;];



im1=conv2(im,m1);



subplot(3,2,1); imshow(uint8(im));
subplot(3,2,2); imshow(uint8(im1));

