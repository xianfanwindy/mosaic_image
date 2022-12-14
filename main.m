clc;
clear;
close all;

maindir='.\';
imdir=fullfile(maindir,'data','images');
resultdir=fullfile(maindir,'result');

im_1=fullfile(imdir,'1.png');
im_2=fullfile(imdir,'2.png');
im_1=imread(im_1);
im_2=imread(im_2);

if ~exist(resultdir,'file')
    mkdir(resultdir);
end

% 原图
figure;
subplot(2,1,1);
imshow(im_1);
subplot(2,1,2);
imshow(im_2);

% 左右拼接
left_right=[im_1,im_2];
figure;
imshow(left_right);
res_lr=fullfile(resultdir,'left_right.png');
imwrite(left_right,res_lr);

% 上下拼接
up_down=[im_1;im_2];
figure;
imshow(up_down);
res_ud=fullfile(resultdir,'up_down.png');
imwrite(up_down,res_ud);