clear all; close all; 

%% import data - x and y has date for ee1 in row 1, ee2 in row 2
scale = 1;
% B videos
% no 5
KTB4 = csvread('clust_KT_B004.csv');
xktb4_ = round(KTB4(1:end,1:2)'*scale);
yktb4_ = round(KTB4(1:end,3:4)'*scale);
KTB3 = csvread('clust_KT_B003.csv');
xktb3_ = round(KTB3(1:end,1:2)'*scale);
yktb3_ = round(KTB3(1:end,3:4)'*scale);
KTB2 = csvread('clust_KT_B002.csv');
xktb2_ = round(KTB2(1:end,1:2)'*scale);
yktb2_ = round(KTB2(1:end,3:4)'*scale);
KTB1 = csvread('clust_KT_B001.csv');
xktb1_ = round(KTB1(1:end,1:2)'*scale);
yktb1_ = round(KTB1(1:end,3:4)'*scale);

% no 5
SB4 = csvread('clust_S_B004.csv');
xsb4_ = round(SB4(1:end,1:2)'*scale);
ysb4_ = round(SB4(1:end,3:4)'*scale);
SB3 = csvread('clust_S_B003.csv');
xsb3_ = round(SB3(1:end,1:2)'*scale);
ysb3_ = round(SB3(1:end,3:4)'*scale);
SB2 = csvread('clust_S_B002.csv');
xsb2_ = round(SB2(1:end,1:2)'*scale);
ysb2_ = round(SB2(1:end,3:4)'*scale);
SB1 = csvread('clust_S_B001.csv');
xsb1_ = round(SB1(1:end,1:2)'*scale);
ysb1_ = round(SB1(1:end,3:4)'*scale);

SB5 = csvread('clust_S_B005.csv');
xsb5_ = round(SB5(1:end,1:2)'*scale);
ysb5_ = round(SB5(1:end,3:4)'*scale);
SB4 = csvread('clust_S_B004.csv');
xsb4_ = round(SB4(1:end,1:2)'*scale);
ysb4_ = round(SB4(1:end,3:4)'*scale);
SB3 = csvread('clust_S_B003.csv');
xsb3_ = round(SB3(1:end,1:2)'*scale);
ysb3_ = round(SB3(1:end,3:4)'*scale);
SB2 = csvread('clust_S_B002.csv');
xsb2_ = round(SB2(1:end,1:2)'*scale);
ysb2_ = round(SB2(1:end,3:4)'*scale);
SB1 = csvread('clust_S_B001.csv');
xsb1_ = round(SB1(1:end,1:2)'*scale);
ysb1_ = round(SB1(1:end,3:4)'*scale);

% C videos
KTB4 = csvread('clust_KT_B004.csv'); % no KT_B005
xktb4_ = round(KTB4(1:end,1:2)'*scale);
yktb4_ = round(KTB4(1:end,3:4)'*scale);
KTB3 = csvread('clust_KT_B003.csv');
xktb3_ = round(KTB3(1:end,1:2)'*scale);
yktb3_ = round(KTB3(1:end,3:4)'*scale);
KTB2 = csvread('clust_KT_B002.csv');
xktb2_ = round(KTB2(1:end,1:2)'*scale);
yktb2_ = round(KTB2(1:end,3:4)'*scale);
KTB1 = csvread('clust_KT_B001.csv');
xktb1_ = round(KTB1(1:end,1:2)'*scale);
yktb1_ = round(KTB1(1:end,3:4)'*scale);

SB5 = csvread('clust_S_B005.csv');
xsb5_ = round(SB5(1:end,1:2)'*scale);
ysb5_ = round(SB5(1:end,3:4)'*scale);
SB4 = csvread('clust_S_B004.csv');
xsb4_ = round(SB4(1:end,1:2)'*scale);
ysb4_ = round(SB4(1:end,3:4)'*scale);
SB3 = csvread('clust_S_B003.csv');
xsb3_ = round(SB3(1:end,1:2)'*scale);
ysb3_ = round(SB3(1:end,3:4)'*scale);
SB2 = csvread('clust_S_B002.csv');
xsb2_ = round(SB2(1:end,1:2)'*scale);
ysb2_ = round(SB2(1:end,3:4)'*scale);
SB1 = csvread('clust_S_B001.csv');
xsb1_ = round(SB1(1:end,1:2)'*scale);
ysb1_ = round(SB1(1:end,3:4)'*scale);

SB5 = csvread('clust_S_B005.csv');
xsb5_ = round(SB5(1:end,1:2)'*scale);
ysb5_ = round(SB5(1:end,3:4)'*scale);
SB4 = csvread('clust_S_B004.csv');
xsb4_ = round(SB4(1:end,1:2)'*scale);
ysb4_ = round(SB4(1:end,3:4)'*scale);
SB3 = csvread('clust_S_B003.csv');
xsb3_ = round(SB3(1:end,1:2)'*scale);
ysb3_ = round(SB3(1:end,3:4)'*scale);
SB2 = csvread('clust_S_B002.csv');
xsb2_ = round(SB2(1:end,1:2)'*scale);
ysb2_ = round(SB2(1:end,3:4)'*scale);
SB1 = csvread('clust_S_B001.csv');
xsb1_ = round(SB1(1:end,1:2)'*scale);
ysb1_ = round(SB1(1:end,3:4)'*scale);

% D videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:end,1:2)'*scale);
yktd4_ = round(KTD4(1:end,3:4)'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:end,1:2)'*scale);
yktd2_ = round(KTD2(1:end,3:4)'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:end,1:2)'*scale);
yktd1_ = round(KTD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

% E videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:end,1:2)'*scale);
yktd4_ = round(KTD4(1:end,3:4)'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:end,1:2)'*scale);
yktd2_ = round(KTD2(1:end,3:4)'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:end,1:2)'*scale);
yktd1_ = round(KTD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
% no 2
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

% F videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:end,1:2)'*scale);
yktd4_ = round(KTD4(1:end,3:4)'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:end,1:2)'*scale);
yktd2_ = round(KTD2(1:end,3:4)'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:end,1:2)'*scale);
yktd1_ = round(KTD1(1:end,3:4)'*scale);

% no 5
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
% no 2
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

% G videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:end,1:2)'*scale);
yktd4_ = round(KTD4(1:end,3:4)'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:end,1:2)'*scale);
yktd2_ = round(KTD2(1:end,3:4)'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:end,1:2)'*scale);
yktd1_ = round(KTD1(1:end,3:4)'*scale);

% no NP G videos

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

% H videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:end,1:2)'*scale);
yktd4_ = round(KTD4(1:end,3:4)'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
% no 1 or 2

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
% no 3
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
% no 1

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
% no 2
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

% I videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:end,1:2)'*scale);
yktd5_ = round(KTD5(1:end,3:4)'*scale);
% no 4
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:end,1:2)'*scale);
yktd3_ = round(KTD3(1:end,3:4)'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:end,1:2)'*scale);
yktd2_ = round(KTD2(1:end,3:4)'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:end,1:2)'*scale);
yktd1_ = round(KTD1(1:end,3:4)'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
% no 1

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:end,1:2)'*scale);
ysd5_ = round(SD5(1:end,3:4)'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:end,1:2)'*scale);
ysd4_ = round(SD4(1:end,3:4)'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:end,1:2)'*scale);
ysd3_ = round(SD3(1:end,3:4)'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:end,1:2)'*scale);
ysd2_ = round(SD2(1:end,3:4)'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:end,1:2)'*scale);
ysd1_ = round(SD1(1:end,3:4)'*scale);

%% independent hmm for each dimension 
seq = [xktd5_(1,:),xsd5_(1,:),xktd4_(1,:),xsd4_(1,:),xktd3_(1,:),xsd3_(1,:),xktd2_(1,:),xsd2_(1,:),xsb5_(1,:),xktb4_(1,:),xsb4_(1,:),xktb3_(1,:),xsb3_(1,:),xktb2_(1,:),xsb2_(1,:);
       yktd5_(1,:),ysd5_(1,:),yktd4_(1,:),ysd4_(1,:),yktd3_(1,:),ysd3_(1,:),yktd2_(1,:),ysd2_(1,:),ysb5_(1,:),yktb4_(1,:),ysb4_(1,:),yktb3_(1,:),ysb3_(1,:),yktb2_(1,:),ysb2_(1,:)];
% kt state 1, s state 2
size_ones = ones(1,size(xktd5_,2));
%states = [1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones];
states = [1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones, 1*size_ones, 2*size_ones];
%psuedotr = [0 2; 1 0]; 
[trans_estx,emis_estx] = hmmestimate(seq(1,:),states);%,'Pseudotransitions',psuedotr);
[trans_esty,emis_esty] = hmmestimate(seq(2,:),states);%,'Pseudotransitions',psuedotr);
likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
x_acc = sum(states==likelystates_x)/size(states,2);
y_acc = sum(states==likelystates_y)/size(states,2);
mean([x_acc,y_acc]);

% seq = [xsd3_(1,:);%,xktd5_(1,:);
%        ysd3_(1,:)];%,yktd5_(1,:)];
seq = [xsd1_(1,:); ysd1_(1,:)];
states = [2*size_ones];%,1*size_ones];
% likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
% likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
% x_acc = sum(states==likelystates_x)/size(states,2);
% y_acc = sum(states==likelystates_y)/size(states,2);
% ind_acc = mean([x_acc,y_acc])                  
pstatesx = hmmdecode(seq(1,:), trans_estx, emis_estx);
pstatesy = hmmdecode(seq(2,:), trans_esty, emis_esty);


