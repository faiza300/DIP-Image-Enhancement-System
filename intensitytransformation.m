clc; clear; close all;

img_rgb = imread('mountain1(1).jpg');
img_gray = rgb2gray(img_rgb);

img_eq = histeq(img_gray);

figure;
subplot(2,2,1); imshow(img_gray);  title('Original Image');
subplot(2,2,2); imhist(img_gray);  title('Original Histogram');
subplot(2,2,3); imshow(img_eq);    title('Equalized Image');
subplot(2,2,4); imhist(img_eq);    title('Equalized Histogram');