img = imread('baby.jpg');
gimg = rgb2gray(img);
min = 0;
max = 255;
newMin = 109;
newMax = 110;
[x, y] = size(gimg);
for i = 1 : x
    for j = 1 : y
        temp = gimg(x, y);
        new_temp = (newMax - newMin)*((temp - min)/(max - min)) + newMin;
        gimg(x, y) = new_temp;
    end
end
figure;
imshow(gimg);




%%



I=imread('baby.jpg');
figure;
imshow(I);
n=imhist(I);
N=sum(n);
max=0;

for i=1:256
    P(i)=n(i)/N;
end

for T=2:255      
    w0=sum(P(1:T)); 
    w1=sum(P(T+1:256)); 
    u0=dot([0:T-1],P(1:T))/w0; 
    u1=dot([T:255],P(T+1:256))/w1; 
    sigma=w0*w1*((u1-u0)^2); 
    if sigma>max 
        max=sigma; 
        threshold=T-1; 
    end
end

bw=im2bw(I,threshold/255); 
figure(3),imshow(bw); 


%%


load sculpture ;
plot(sumsin);
title('Signal');
[c,l] = wavedec(sumsin,3,'db2');
approx = appcoef(c,l,'db2');
[cd1,cd2,cd3] = detcoef(c,l,[1 2 3]);
subplot(4,1,1)
plot(approx)
title('Approximation Coefficients')
subplot(4,1,2)
plot(cd3)
title('Level 3 Detail Coefficients')
subplot(4,1,3)
plot(cd2)
title('Level 2 Detail Coefficients')
subplot(4,1,4)
plot(cd1)
title('Level 1 Detail Coefficients')