function [t] = train()
im = imread('a.jpg','jpg');
im2=rgb2gray(im);
im3=im2bw(im2);
im4=imcomplement(im3); 
im5=imclose(im4,strel('disk',11 ));
[labels,numlabels]=bwlabel(im5); 
vislabels(labels); 
stats=regionprops(labels, 'all'); 