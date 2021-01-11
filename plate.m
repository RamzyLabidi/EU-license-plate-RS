function [s] = plate()
imtrain = imread('image for matlab.jpg','jpg');
imshow(imtrain);
imtrain2 = rgb2gray(imtrain);
imtrain3 = imcrop(imtrain2,[45,96,520,120]);
level = graythresh(imtrain3);
imtrain4 = im2bw(imtrain3,level);
imtrain5 = imopen(imtrain4,strel('disk',3));
imtrain6 = imcomplement(imtrain5);
[labels


