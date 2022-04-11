img = rgb2gray(imread('baby.jpg'));
level=graythresh(img);
BW=imbinarize(img,level);
num_threshs = 5;
thresh = multithresh(img,num_threshs);
img1 = img <= thresh(1);
img2 = and(img <= thresh(2),img > thresh(1));
img3 = and(img <= thresh(3), img > thresh(2));
img4 = and(img <= thresh(4), img > thresh(3));
img5 = and(img <= thresh(5), img > thresh(4));
img6 = img > thresh(5); 
subplot(231), imshow(img1,[]), title('img <= T1')
subplot(232), imshow(img2,[]),  title('img > T1 && img <= T2')
subplot(233), imshow(img3,[]), title('img > T2 && img <= T3')
subplot(234), imshow(img4,[]),  title('img > T3 && img <= T4')
subplot(235), imshow(img5,[]), title('img > T4 && img <= T5')
subplot(236), imshow(img6,[]), title('img > T5')