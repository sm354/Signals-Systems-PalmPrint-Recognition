%% read image
img = imread('im4.jpeg');
b = rgb2gray(img);
imshow(b);

%% mask 2
f1 = [-1 -2 -1;0 0 0;1 2 1];
imgX = filter2(f1,b); % filter2 is a 2D digital filter

f2 = f1';
imgY = filter2(f2,b);

imgEdge = sqrt(imgX.^2 + imgY.^2);
%imgEdge = im2bw(imgEdge,0.3);

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