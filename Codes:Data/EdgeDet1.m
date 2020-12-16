%% Read in image
img1 = imread('im4.jpeg');
imshow(img1);

%% canny edge detection

edgeImg = edge(rgb2gray(img1),'Canny',0.258);
imshow(edgeImg);
title('Canny Edge Detection');

% can use other methods - see edges in help

%% fill holes

ImgCompl = imcomplement(edgeImg);
ImgFilled = imfill(edgeImg,'holes');

imshow(ImgFilled);