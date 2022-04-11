in = imread('ref.jpg');

out = ((400 - 0) / (max(in(:)) - min(in(:)))) * (in - min(in(:)));
baseFileName = 'goal_ori.jpg';
fullFileName = fullfile('C:\Users\UPLC\Documents\MATLAB', baseFileName);
imwrite(out, fullFileName);
subplot(1, 2, 1);
imshow(in);
title("Original Image");

subplot(1, 2, 2);
imshow(out);
title("Normalized Image");