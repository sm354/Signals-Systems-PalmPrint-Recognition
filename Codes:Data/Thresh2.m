%% Read in image
img = imread('im3.jpeg');
imshow(img);

%% RGB Color Space
img = img1;

Rmatrix = img(:,:,1);
Gmatrix = img(:,:,2);
Bmatrix = img(:,:,3);

levelR = 0.62;
levelG = 0.65;
levelB = 0.56;
redImg = im2bw(Rmatrix,levelR);
greenImg = im2bw(Gmatrix,levelG);
blueImg = im2bw(Bmatrix,levelB);

SumImg(:,:,1) = redImg;
SumImg(:,:,2) = greenImg;
SumImg(:,:,3) = blueImg;

% Plot the data

subplot(2,2,1), imshow(redImg);
title('Red Plane');
subplot(2,2,2), imshow(greenImg);
title('Green Plane');
subplot(2,2,3), imshow(blueImg);
title('Blue Plane');
subplot(2,2,4), imshow(SumImg);
title('Combined Image');

%% Complement image and Fill in holes

ImgCompl = imcomplement(SumImg);
ImgFilled = imfill(ImgCompl,'holes');

imshow(ImgFilled);

%% 

se = strel('disk', 4);
NewImg = imopen(ImgFilled,se);
imshow(NewImg);




