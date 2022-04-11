load wbarb
imagesc(X)
colormap gray
[LoD,HiD] = wfilters('haar','d');
[cA,cH,cV,cD] = dwt2(X,LoD,HiD,'mode','symh');
subplot(2,2,1)
imagesc(cA)
colormap gray
title('LL band (Approximation)')
subplot(2,2,2)
imagesc(cH)
colormap gray
title('HL band (Horizontal)')
subplot(2,2,3)
imagesc(cV)
colormap gray
title('LH band (Vertical)')
subplot(2,2,4)
imagesc(cD)
colormap gray
title('HH band (Diagonal)')
