function enhanced = process_image(input_image)
    if size(input_image,3) == 3
        img = rgb2gray(input_image);
    else
        img = input_image;
    end

    img = histeq(img);
    img_d = double(img) / 255;
    img_d = img_d .^ 0.5;
    c = 1 / log(1 + max(img_d(:)));
    img_d = c * log(1 + img_d);
    enhanced = uint8(img_d * 255);
end