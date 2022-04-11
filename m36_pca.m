load hald
coeff = pca(ingredients);
ingredients
coeff
subplot(3,1,1)
plot(hald); title('Original');
subplot(3,1,2)
plot(ingredients); title('Before PCA');
subplot(3,1,3)
plot(coeff); title('After PCA');
