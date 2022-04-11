i = imread('baby.jpg');
subplot(2,2,1);
imshow(i);
title('Original Image');
subplot(2,2,2);
imshow(i(:,:,1));
title('Red Component');
subplot(2,2,3);
imshow(i(:,:,2));
title('Green Component');
subplot(2,2,4);
imshow(i(:,:,3));
title('Blue Component');