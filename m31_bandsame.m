Input_Image=imread('baby.jpg');
Red_Input_Image=Input_Image(:,:,1);
Green_Input_Image=Input_Image(:,:,2);
Blue_Input_Image=Input_Image(:,:,3);


[LLr,LHr,HLr,HHr]=dwt2(Red_Input_Image,'haar');

[LLg,LHg,HLg,HHg]=dwt2(Green_Input_Image,'haar');

[LLb,LHb,HLb,HHb]=dwt2(Blue_Input_Image,'haar');



First_Level_Decomposition(:,:,1)=[LLr,LHr;HLr,HHr];

First_Level_Decomposition(:,:,2)=[LLg,LHg;HLg,HHg];

First_Level_Decomposition(:,:,3)=[LLb,LHb;HLb,HHb];

First_Level_Decomposition=uint8(First_Level_Decomposition);


subplot(1,2,1);imshow(Input_Image);title('Input Image');

subplot(1,2,2);imshow(First_Level_Decomposition,[]);title('First Level Decomposition');
