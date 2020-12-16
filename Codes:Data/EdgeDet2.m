%% read image
img = imread('im4.jpeg');
b = rgb2gray(img);
imshow(b);

%% apply various edge detectors
e1 = edge(b,'prewitt');
e2 = edge(b,'canny');
e3 = edge(b,'sobel');
e4 = edge(b,'roberts');

figure, imshow(b);
subplot(2,2,1) , imshow(e1);
title('Prewitt');
subplot(2,2,2) , imshow(e2);
title('Canny');
subplot(2,2,3) , imshow(e3);
title('Sobel');
subplot(2,2,4) , imshow(e4);
title('Roberts');
