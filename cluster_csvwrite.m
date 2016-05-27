% Load all videos
% obtain xy coords of top two clusters 
% store in csv file

clear all; close all;

%% B videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
% no 5 ktb video
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

% no 5 npb video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_B004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_B003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_B002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_B001.csv',[clust1,clust2]);

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

%% C videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_C005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_C004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_C003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_C002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_C001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_C005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_C004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_C003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_C002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_C001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_C005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_C004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_C003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_C002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_C001.csv',[clust1,clust2]);

%% D videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_D001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_D005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_D004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_D003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_D002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_D001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_D001.csv',[clust1,clust2]);

%% E videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_E005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_E004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_E003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_E002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_E001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_E005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_E004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_E003.csv',[clust1,clust2]);
% no 2 npe video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_E001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_E005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_E004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_E003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_E002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_E001.csv',[clust1,clust2]);

%% F videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_F005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_F004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_F003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_F002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_F001.csv',[clust1,clust2]);

% no 5 npf video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_F004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_F003.csv',[clust1,clust2]);
% no 2 npf video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_F001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_F005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_F004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_F003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_F002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_F001.csv',[clust1,clust2]);

%% G videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_G005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_G004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_G003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_G002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_G001.csv',[clust1,clust2]);

% no npg videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_G005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_G004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_G003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_G002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_G001.csv',[clust1,clust2]);

%% H videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_H005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_H004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_H003.csv',[clust1,clust2]);
% no 1 or 2 kth video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_H005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_H004.csv',[clust1,clust2]);
% no 3 nph video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_H002.csv',[clust1,clust2]);
% no 1 nph video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_H005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_H004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_H003.csv',[clust1,clust2]);
% no 2 sh video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_H001.csv',[clust1,clust2]);

%% I videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 100;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_I005.csv',[clust1,clust2]);
% no 4 kti video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_I003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_I002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_KT_I001.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_I005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_I004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_I003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_NP_I002.csv',[clust1,clust2]);
% no 1 npi video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I005_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_I005.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I004_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_I004.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I003_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_I003.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I002_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_I002.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I001_capture1.avi');
[clust1,clust2] = getCorners(obj,alpha,nFrames);
csvwrite('clust_S_I001.csv',[clust1,clust2]);
