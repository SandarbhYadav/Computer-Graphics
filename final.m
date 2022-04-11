I = double(imread('peppers.png'));
X = reshape(I,size(I,1)*size(I,2),3);
coeff = pca(X);
Itransformed = X*coeff;
Ipc1 = reshape(Itransformed(:,1),size(I,1),size(I,2));
Ipc2 = reshape(Itransformed(:,2),size(I,1),size(I,2));
Ipc3 = reshape(Itransformed(:,3),size(I,1),size(I,2));
X
coeff
subplot(2,3,1)
imshow('peppers.png'); title('Original image');
subplot(2,3,2)
imshow(Ipc1,[]); title('Ipc1');
subplot(2,3,3)
imshow(Ipc2,[]); title('Ipc2');
subplot(2,3,4)
imshow(Ipc3,[]); title('Ipc3');
subplot(2,3,5)
plot(X); title('Features Before PCA');
subplot(2,3,6)
plot(coeff); title('Features After PCA');
