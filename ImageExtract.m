clear all; close all; clc;
srcFiles = dir('D:\Lapi Data\F\study time\PhD\Semester 1\ML applications in Health Care\Paper\Data\*.mat');  % the folder in which ur images exists
for i = 1 : length(srcFiles)
    filename = strcat('D:\Lapi Data\F\study time\PhD\Semester 1\ML applications in Health Care\Paper\Data\',srcFiles(i).name);
    im = load(filename);
    Im = [im.cjdata];
    A = [Im.image];
    I = uint8(255 * mat2gray(A));
    if [Im.label]==1
%         imwrite(I, strcat('/MATLAB Drive/Data/1/class_2','/my_new',num2str(i),'.jpg'));
    imwrite(I,strcat('image',num2str(i),'.jpg'));
    end 
end
