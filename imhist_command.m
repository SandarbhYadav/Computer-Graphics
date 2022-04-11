i = imread('spaceship.jpg');
i = rgb2gray(i);
subplot(1,2,1);
imshow(i);
subplot(1,2,2);
imhist(i);