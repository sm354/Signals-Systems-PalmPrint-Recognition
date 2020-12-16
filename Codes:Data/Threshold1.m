%% Read in image
img = imread('im4.jpeg');
imshow(img);

%% Convert to grayscale image
imggray = rgb2gray(img);
imshow(imggray);
% note here pixelXpixel not X3 since only one plane

%% Problem: illumination does not allow proper segmentation
level = 0.69; % belongs in [0,1] ; use increment and run option by right click
img_threshED = im2bw(imggray,level);
ImgCompl = imcomplement(img_threshED);
imshowpair(imggray,ImgCompl,'montage');
