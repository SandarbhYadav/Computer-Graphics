load wbarb;  
whos
image(X); colormap(map); colorbar;
[cA,cH,cV,cD] = dwt2(X,'bior3.7');
colormap(map);
subplot(2,2,1); plot(cA);
title('plot of cA')
subplot(2,2,2); plot(cH);
title('plot of cH')
subplot(2,2,3); plot(cV);
title('plot of cV') 
subplot(2,2,4); plot(cD);
title('plot of cD')