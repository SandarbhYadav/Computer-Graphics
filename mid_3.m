img = imread('baby.jpg'); 
  
img=rgb2gray(img); 
  
[x, y] = size(img); 
  
  
frequency = 1 : 256; 
  
count = 0; 
  
for i = 1 : 256 
    for j = 1 : x 
        for k = 1 : y 
  
            if img(j, k) == i-1 
                    count = count + 1; 
            end
        end
    end
    frequency(i) = count; 
  
    count = 0; 
  
end
  
  
n = 0 : 255; 
  
stem(n, frequency); 
  
grid on; 
ylabel('Number of pixels with such intensity levels -->'); 
xlabel('Intensity Levels  -->'); 
title('HISTOGRAM OF THE IMAGE');


for j = 100 : 130
        x=img(j,1);
        disp(x);
        
end

n=x*y;
arr = 1:n;
sort(arr);
sort(arr,1,'descend');

mini=255;
maxi=0;
for i=100:130
    if(img(i,1)<mini)
        mini = img(i,1);
    end
    if(img(i,1)>maxi)
        maxi = img(i,1);
    end
end
disp(mini);
disp(maxi);

    
    


        
