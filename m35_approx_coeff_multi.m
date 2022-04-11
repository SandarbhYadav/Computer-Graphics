load leleccum; 
sig = leleccum(1:3920);
[C,L] = wavedec(sig,5,'sym4');
Lev = 3;
a3 = appcoef(C,L,'sym4',Lev);
subplot(2,1,1)
plot(sig); title('Original Signal');
subplot(2,1,2)
plot(a3); title('Level-3 Approximation Coefficients');