%% Read in image
img1 = imread('im4.jpeg');
imshow(img1);

%% double threshing
T1 = 196;
T2 = 270;

NewImage = uint8(255 * (img1 < T1 | img1 > T2));
Compl = imcomplement(NewImage);


subplot(1,2,1), imshow(img1);
title('Original Image');
subplot(1,2,2), imshow(Compl);
title('Threshed Image');