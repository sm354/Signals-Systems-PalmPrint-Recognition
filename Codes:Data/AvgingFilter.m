%% read image
img = imread('im4.jpeg');
b = rgb2gray(img);
imshow(b);

% here the image is read and then stored in a matrix

%% apply integrator filter
f1 = [1 1 1; 1 1 1; 1 1 1]/9; % divide by 9 since sum = 9
% syntax (2) is f = ones(3,3)/9;
% this filter kills frequency
filteredImg = imfilter(b,f1);
imshow(filteredImg);

f2 = ones(9,9)/81;
f2Img = imfilter(b,f2);
imshow(f2Img);

%% edge detector : sobel
f3 = [1 0 -1; 2 0 -2; 1 0 -1]; % sobel edge detector matrix
f3Img = imfilter(b,f3);
imshow(f3Img);