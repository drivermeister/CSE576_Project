clear all; close all;

%% D videos
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D005_capture1.avi');
%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D005.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D005.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D003.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D003.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D002.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D002.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D001.csv',[clust1,clust2]);

%% B videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_B004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_B003.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_B002.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_B001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_B005.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_B004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_B003.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_B002.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_B001.csv',[clust1,clust2]);

