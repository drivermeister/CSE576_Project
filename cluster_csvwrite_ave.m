% Load all videos
% obtain xy coords of top two clusters 
% store in csv file

clear all; close all;

%% B videos

%nFrames=obj.NumberOfFrames;
alpha = 0.3; % variable to determine new cluster weight
nFrames = 870; % min video length 30 sec at 30 frames/sec = 900 frames
% no 5 ktb video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_B004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_B003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_B002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_B001aveave.csv',[clust1,clust2]);

% no 5 npb video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_B004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_B003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_B002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_B001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_B001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_B005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_B004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_B003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_B002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_B001aveave.csv',[clust1,clust2]);

%% C videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_C005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_C004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_C003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_C002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_C001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_C005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_C004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_C003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_C002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_C001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_C001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_C005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_C004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_C003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_C002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_C001aveave.csv',[clust1,clust2]);

%% D videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_D005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_D004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_D003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_D002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_D001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_D005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_D004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_D003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_D002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_D001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_D001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_D005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_D004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_D003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_D002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_D001aveave.csv',[clust1,clust2]);

%% E videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_E005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_E004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_E003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_E002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_E001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_E001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_E005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_E004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_E003aveave.csv',[clust1,clust2]);
% no 2 npe video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_E001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_E001aveave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_E005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_E004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_E003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_E002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_E001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_E001aveave.csv',[clust1,clust2]);

%% F videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_F005aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_F004aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_F003aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_F002aveave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_F001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_F001aveave.csv',[clust1,clust2]);

% no 5 npf video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_F004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_F003ave.csv',[clust1,clust2]);
% no 2 npf video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_F001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_F001ave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_F005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_F004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_F003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_F002ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_F001ave.csv',[clust1,clust2]);

%% G videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_G005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_G004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_G003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_G002ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_G001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_G001ave.csv',[clust1,clust2]);

% no npg videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_G005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_G004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_G003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_G002ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_G001ave.csv',[clust1,clust2]);

%% H videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_H005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_H004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_H003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_H003ave.csv',[clust1,clust2]);
% no 1 or 2 kth video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_H005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_H004ave.csv',[clust1,clust2]);
% no 3 nph video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_H002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_H002ave.csv',[clust1,clust2]);
% no 1 nph video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_H005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_H004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_H003ave.csv',[clust1,clust2]);
% no 2 sh video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_H001ave.csv',[clust1,clust2]);

%% I videos

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_I005ave.csv',[clust1,clust2]);
% no 4 kti video
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_I003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_I002ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_KT_I001ave.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_I005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_I004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_I003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Needle_Passing_I002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_NP_I002ave.csv',[clust1,clust2]);
% no 1 npi video

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I005_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_I005ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I004_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_I004ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I003_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_I003ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I002_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_I002ave.csv',[clust1,clust2]);
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_I001_capture1.avi');
[clust1,clust2] = getCornersAve(obj,alpha,nFrames);
csvwrite('clust_S_I001aveave.csv',[clust1,clust2]);
