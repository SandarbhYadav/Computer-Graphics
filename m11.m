a=imread('mypic.jpg');
imshow(a);
g = rgb2gray(a);
figure;
imshow(g);
b=imbinarize(g);
figure;
imshow(b);
figure;
imhist(a);