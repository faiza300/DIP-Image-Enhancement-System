clc; clear; close all;

img_rgb = imread('family.jpg');

if size(img_rgb, 3) == 3
    img_gray = rgb2gray(img_rgb);
else
    img_gray = img_rgb;
end

enhanced = process_image(img_rgb);

figure;
subplot(1,2,1); imshow(img_gray);   title('Original');
subplot(1,2,2); imshow(enhanced);   title('Enhanced');

imwrite(enhanced, 'enhanced_output.jpg');
fprintf('Enhanced image!\n');