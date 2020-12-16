%% Read in image
img = imread('im3.jpeg');
imshow(img);

%% RGB Color Space
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