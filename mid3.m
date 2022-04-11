img = imread('goal_ori.jpg');
ref_img = imread('ref.jpg');

subplot(1, 3, 1);
imshow(img);
title("Original Image");

subplot(1, 3, 2);
imshow(ref_img);
title("Reference Image");

newMax = max(ref_img(:));
newMin = min(ref_img(:));


int_img = ((newMax - newMin) / (max(img(:)) - min(img(:)))) * (img - min(img(:)));

subplot(1, 3, 3);
imshow(int_img);
title("Normalized Image");