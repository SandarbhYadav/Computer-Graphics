img = imread('baby.jpg');
gimg = rgb2gray(img);
nimg = uint8(255*mat2gray(gimg));
imshow(nimg);
[cA,cH,cV,cD] = dwt2(nimg,'db4');
imagesc(cV)
title('Vertical Detail Coefficients')
cAbw = thresholdbin(cA);
cHbw = thresholdbin(cH);
cVbw = thresholdbin(cV);
cDbw = thresholdbin(cD);
bw1 = im2bw(nimg, cAbw / 255);
bw2 = im2bw(nimg, cHbw / 255);
bw3 = im2bw(nimg, cVbw / 255);
bw4 = im2bw(nimg, cDbw / 255);
subplot(2, 2, 1);
imshow(bw1);
title("Threshold image of cA");
subplot(2, 2, 2);
imshow(bw2);
title("Threshold image of cH");
subplot(2, 2, 3);
imshow(bw3);
title("Threshold image of cV");
subplot(2, 2, 4);
imshow(bw4);
title("Threshold image of cD");
coeff = pca(cA);
size_of_cA = size(cA)
size_of_coeff = size(coeff)


function [threshold] = thresholdbin(I)
n = imhist(I);
N = sum(n);
max = 0;
P = 1:256;
for i = 1 : 256
P(i) = n(i) / N;
end
for T = 2 : 255
w0 = sum(P(1 : T));
w1 = sum(P(T + 1 : 256));
u0 = dot([0 : T - 1], P(1 : T)) / w0;
u1 = dot([T : 255], P(T + 1 : 256)) / w1;
sigma = w0 * w1 * ((u1 - u0) ^ 2);
if sigma > max
max = sigma;
threshold = T - 1;
end
end
end