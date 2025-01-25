
im = imread('cameraman.tif');

[m, n] = size(im);


iml = zeros(m, n);


threshold = 50;


for i = 1:m
    for j = 1:n
        if im(i, j) > threshold
            iml(i, j) = 1;
        else
            iml(i, j) = 0; 
        end
    end
end


figure;
imshow(im);
title('Original Image');

figure;
imshow(iml);

