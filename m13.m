z=imread('baby.jpg');
[m n]=size(z);
   for i=1:m
       for j=1:n
           if z(i,j)<=50
               zz(i,j)=0;
           else zz(i,j)=1;
           end
       end
   end
   
   figure;
   imshow(zz);
   title('thresholded image1');