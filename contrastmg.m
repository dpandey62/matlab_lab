clc;
clear all;
close all;
im = imread('C:\Users\dpand\OneDrive\Desktop\matlab imh7.jpg');
%imshow(im)
im = imresize(im,[256,256]); 
im = rgb2gray(im);

im_min = min(min(im));
im_max = max(max(im));

im1 = ((255/(im_max-im_min))*(im-im_min));
im2 = histeq(im);

subplot(3,2,1);imhshow(im);title('low contrast image');
subplot(3,2,2);imhist(im);title('Histrogram oflow contrast image');
subplot(3,2,3);imshow(im1);title('improvedlow contrast image By linear contrast streching');
subplot(3,2,4);imhist(im1);title('Low contrast image');
subplot(3,2,5);imshow(im2);title('Improved  contrast image By histrogram Equalization');
subplot(3,2,6);imhist(im2);title('low contrast image');


