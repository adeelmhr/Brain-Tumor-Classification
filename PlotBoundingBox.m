clear all; close all; clc;
im = load('765.mat');
Im = [im.cjdata];
A = [Im.image];
I = uint8(255 * mat2gray(A));
BB = [Im.tumorBorder];
BBx =  BB(1:2:end);
BBy = BB(2:2:end);
figure,imshow(I)
hold on
plot(BBx,BBy,'y','LineWidth',2);
