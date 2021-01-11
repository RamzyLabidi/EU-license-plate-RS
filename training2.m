function [s] = plate()
imtrain = imread('a.jpg','jpg');
imtrain2 = rgb2gray(imtrain);
level = graythresh(imtrain2);
imtrain3 = imbinarize(imtrain2,level);
imtrain4 = imcomplement(imtrain3);
imtrain5 = imopen(imtrain4,strel('disk',2));
[labels,numlabels]=bwlabel(imtrain5);
vislabels(labels);
imtrain6 = label2rgb(labels);
imshow(imtrain6);
stats=regionprops(labels, 'all');