%% read image
img = imread('im4.jpeg');
b = rgb2gray(img);
imshow(b);

%% mask 1
f1 = [-1 0 1;-1 0 1;-1 0 1];
imgY = filter2(f1,b); % filter2 is a 2D digital filter
%edge detection along X direction

f2 = f1';
imgX = filter2(f2,b);

imgEdge = sqrt(imgX.^2 + imgY.^2);
%imgEdge = im2bw(imgEdge,0.3);
%edge detection along Y direction 

% print images
figure;
subplot(2,2,1) , imshow(b);
title('Original');
subplot(2,2,2) , imshow(imgX/255);
title('Along X');
subplot(2,2,3) , imshow(imgY/255);
title('Along Y');
subplot(2,2,4) , imshow(imgEdge/255);
title('Sum');