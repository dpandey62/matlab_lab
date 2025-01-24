im = imread('cameraman.tif');
[m,n]= size(im);
iml = zeros(m,n);
for i=1:m
    for j=1:n
        if im(i,j)>127
            iml(i,j)=1;
        else
            iml(i,j)=0;
        end
    end
end
imshow (im);
imshow(iml);
