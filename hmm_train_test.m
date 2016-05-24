clear all; close all; 
% import data - x and y has date for ee1 in row 1, ee2 in row 2
KT5 = csvread('clust_KT_D005.csv');
xkt5_ = round(KT5(1:end,1:2)');
ykt5_ = round(KT5(1:end,3:4)');
KT4 = csvread('clust_KT_D004.csv');
xkt4_ = round(KT4(1:end,1:2)');
ykt4_ = round(KT4(1:end,3:4)');
S5 = csvread('clust_S_D005.csv');
xs5_ = round(S5(1:end,1:2)');
ys5_ = round(S5(1:end,3:4)');
S4 = csvread('clust_S_D004.csv');
xs4_ = round(S4(1:end,1:2)');
ys4_ = round(S4(1:end,3:4)');
KT3 = csvread('clust_KT_D003.csv');
xkt3_ = round(KT3(1:end,1:2)');
ykt3_ = round(KT3(1:end,3:4)');
S3 = csvread('clust_S_D003.csv');
xs3_ = round(S3(1:end,1:2)');
ys3_ = round(S3(1:end,3:4)');

% plot(x_(1,:),y_(1,:),'k'); % looks like the better one
% hold on
% plot(x_(2,:),y_(2,:),'r');

%% independent hmm for each dimension 
seq = [xkt5_(1,:),xs5_(1,:),xkt4_(1,:),xs4_(1,:),xkt5_(1,:),xs4_(1,:),xkt4_(1,:),xs5_(1,:); 
       ykt5_(1,:),ys5_(1,:),ykt4_(1,:),ys4_(1,:),ykt5_(1,:),ys4_(1,:),ykt4_(1,:),ys5_(1,:)]; % data for first end effector
% kt state 1, s state 2
size_ones = ones(1,size(xkt5_,2));
states = [1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones];
%psuedotr = [0 2; 1 0]; 
[trans_estx,emis_estx] = hmmestimate(seq(1,:),states);%,'Pseudotransitions',psuedotr);
[trans_esty,emis_esty] = hmmestimate(seq(2,:),states);%,'Pseudotransitions',psuedotr);
likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
x_acc = sum(states==likelystates_x)/size(states,2);
y_acc = sum(states==likelystates_y)/size(states,2);
mean([x_acc,y_acc]);

seq = [xs4_(1,:),xkt3_(1,:);
       ys4_(1,:),ykt3_(1,:)];
states = [2*size_ones,1*size_ones];
likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
x_acc = sum(states==likelystates_x)/size(states,2);
y_acc = sum(states==likelystates_y)/size(states,2);
ind_acc = mean([x_acc,y_acc])                  

