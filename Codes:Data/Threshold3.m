%% Read in image
img1 = imread('im1.jpeg');
imshow(img1);

%% RGB Color Space
img = img1;

Rmatrix = img(:,:,1);
Gmatrix = img(:,:,2);
Bmatrix = img(:,:,3);

figure;
subplot(2,2,1) , imshow(Rmatrix);
title('Red Plane');
subplot(2,2,2) , imshow(Gmatrix);
title('Green Plane');
subplot(2,2,3) , imshow(Bmatrix);
title('Blue Plane');
subplot(2,2,4) , imshow(img);
title('Original Image');

%%

levelR = 0.62;
levelG = 0.65;
levelB = 0.7;
redImg = im2bw(Rmatrix,levelR);
greenImg = im2bw(Gmatrix,levelG);
blueImg = im2bw(Bmatrix,levelB);

SumImg = (redImg & greenImg & blueImg);

% Plot the data

subplot(2,2,1), imshow(redImg);
title('Red Plane');
subplot(2,2,2), imshow(greenImg);
title('Green Plane');
subplot(2,2,3), imshow(blueImg);
title('Blue Plane');
subplot(2,2,4), imshow(SumImg);
title('Sum of all planes');

%% Complement image and Fill in holes

ImgCompl = imcomplement(SumImg);
ImgFilled = imfill(ImgCompl,'holes');

imshow(ImgFilled);

%% 

se = strel('disk', 4);
NewImg = imopen(ImgFilled,se);
imshow(NewImg);




