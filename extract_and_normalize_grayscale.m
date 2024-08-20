function normalized_grayscale_values = extract_and_normalize_grayscale(image_path)
    % 读取图片
    img = imread(image_path);
    
    % 检查图片是否为彩色图，并转换为灰度图像
    if size(img, 3) == 3
        grayscale_img = rgb2gray(img);
    else
        grayscale_img = img;
    end
    
    % 将图片转换为double类型，用于归一化
    grayscale_double = double(grayscale_img);
    
    % 归一化灰度值到0-1范围
    normalized_grayscale_values = grayscale_double / 255.0;
end

% % 使用函数
% image_path = '1.jpg'; % 替换为你的图片文件名
% normalized_grayscale_values = extract_and_normalize_grayscale(image_path);
% 
% 输出归一化的灰度值
% disp(normalized_grayscale_values);