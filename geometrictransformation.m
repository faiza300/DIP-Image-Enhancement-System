clc; clear; close all;

img_rgb = imread('mountain1(1).jpg');
img_gray = rgb2gray(img_rgb);

angles = [30,45,60,90,120,150,180];
figure;
for i = 1:7
    img_r = imrotate(img_gray, angles(i), 'bilinear', 'crop');
    subplot(2,4,i);
    imshow(img_r);
    title([num2str(angles(i)) ' deg']);
end

T = affine2d([1 0 0; 0 1 0; 50 30 1]);
img_t = imwarp(img_gray, T, 'OutputView', imref2d(size(img_gray)));
figure;
subplot(1,2,1); imshow(img_gray); title('Original');
subplot(1,2,2); imshow(img_t);    title('Translated');

S = affine2d([1 0.3 0; 0 1 0; 0 0 1]);
img_sh = imwarp(img_gray, S, 'OutputView', imref2d(size(img_gray)));
figure;
subplot(1,2,1); imshow(img_gray); title('Original');
subplot(1,2,2); imshow(img_sh);   title('Sheared');

img_rot90    = imrotate(img_gray, 90);
img_restored = imrotate(img_rot90, -90);
figure;
subplot(1,3,1); imshow(img_gray);     title('Original');
subplot(1,3,2); imshow(img_rot90);    title('Rotated 90');
subplot(1,3,3); imshow(img_restored); title('Restored');

clc; clear; close all;

img_rgb = imread('img interpol.JPG');
img_gray = rgb2gray(img_rgb);

angles = [30,45,60,90,120,150,180];
figure;
for i = 1:7
    img_r = imrotate(img_gray, angles(i), 'bilinear', 'crop');
    subplot(2,4,i);
    imshow(img_r);
    title([num2str(angles(i)) ' deg']);
end

T = affine2d([1 0 0; 0 1 0; 50 30 1]);
img_t = imwarp(img_gray, T, 'OutputView', imref2d(size(img_gray)));
figure;
subplot(1,2,1); imshow(img_gray); title('Original');
subplot(1,2,2); imshow(img_t);    title('Translated');

S = affine2d([1 0.3 0; 0 1 0; 0 0 1]);
img_sh = imwarp(img_gray, S, 'OutputView', imref2d(size(img_gray)));
figure;
subplot(1,2,1); imshow(img_gray); title('Original');
subplot(1,2,2); imshow(img_sh);   title('Sheared');

img_rot90    = imrotate(img_gray, 90);
img_restored = imrotate(img_rot90, -90);
figure;
subplot(1,3,1); imshow(img_gray);     title('Original');
subplot(1,3,2); imshow(img_rot90);    title('Rotated 90');
subplot(1,3,3); imshow(img_restored); title('Restored');

