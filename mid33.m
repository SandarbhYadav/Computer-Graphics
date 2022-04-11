in = imread('baby.jpg');

out = ((383 - 0) / (max(in(:)) - min(in(:)))) * (in - min(in(:)));

subplot(2, 2, 1);
imshow(in);
title("Original Image");

subplot(2, 2, 2);
imshow(out);
title("Normalized Image");

subplot(2, 2, 3);
imhist(in);
title("Original hist");

subplot(2, 2, 4);
imhist(out);
title("Normalized hist");