% CSE576 Project
clear all; close all; clc;
cdata = imread('Boxes.png');

hgram = 1:255;
I1 = rgb2gray(cdata);
I1_eq = histeq(I1,hgram);
% figure
% imshow(I1)
% subplot(5,4,1)
% figure
% imshow(I1)
% figure
% imshow(I1_eq)
h = fspecial('average',3);
J_a = imfilter(I1,h);
I1_eq_a = imfilter(I1_eq,h);
figure
imshow(I1_eq_a)
%%imshow(J_a)
%%subplot(5,4,2)
% k1 = [.1;.5;1;2;1;.5;.1]*[-1 -1 -1 0 1 1 1];
k1 = [1;2;1;]*[-1 0 1];
k2 = k1';
J1 = imfilter(I1,k1);
J2 = imfilter(I1,k2);
figure
imshow(J1)
figure
imshow(J2)
% %subplot(5,4,3)
% imshow(J2)
% %subplot(5,4,4)
%J1_a = imfilter(J_a,k1);
%J2_a = imfilter(J_a,k2);
%figure
%imshow(J1_a)
% subplot(5,4,5)
%figure
%imshow(J2_a)