in = imread('baby.jpg');

out = ((500 - 0) / (max(in(:)) - min(in(:)))) * (in - min(in(:)));
subplot(1, 2, 1);
imshow(in);
title("Original Image");

subplot(1, 2, 2);
imshow(out);
title("Normalized Image");