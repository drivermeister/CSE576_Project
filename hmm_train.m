clear all; close all; 

% import data - x and y has data for ee1 in row 1, ee2 in row 2
scale = 1.4; % parameter to play with, if desired
nFrames = 870; % frames to process. 870 is the max
% B videos
% no 5
KTB4 = csvread('clust_KT_B004.csv');    % must round to integers for use with hmm
xktb4_ = round(KTB4(1:nFrames,[1 3])'*scale);
yktb4_ = round(KTB4(1:nFrames,[2 4])'*scale);
KTB3 = csvread('clust_KT_B003.csv');
xktb3_ = round(KTB3(1:nFrames,[1 3])'*scale);
yktb3_ = round(KTB3(1:nFrames,[2 4])'*scale);
KTB2 = csvread('clust_KT_B002.csv');
xktb2_ = round(KTB2(1:nFrames,[1 3])'*scale);
yktb2_ = round(KTB2(1:nFrames,[2 4])'*scale);
KTB1 = csvread('clust_KT_B001.csv');
xktb1_ = round(KTB1(1:nFrames,[1 3])'*scale);
yktb1_ = round(KTB1(1:nFrames,[2 4])'*scale);

% no 5
NPB4 = csvread('clust_NP_B004.csv');
xnpb4_ = round(NPB4(1:nFrames,[1 3])'*scale);
ynpb4_ = round(NPB4(1:nFrames,[2 4])'*scale);
NPB3 = csvread('clust_NP_B003.csv');
xnpb3_ = round(NPB3(1:nFrames,[1 3])'*scale);
ynpb3_ = round(NPB3(1:nFrames,[2 4])'*scale);
NPB2 = csvread('clust_NP_B002.csv');
xnpb2_ = round(NPB2(1:nFrames,[1 3])'*scale);
ynpb2_ = round(NPB2(1:nFrames,[2 4])'*scale);
NPB1 = csvread('clust_NP_B001.csv');
xnpb1_ = round(NPB1(1:nFrames,[1 3])'*scale);
ynpb1_ = round(NPB1(1:nFrames,[2 4])'*scale);

SB5 = csvread('clust_S_B005.csv');
xsb5_ = round(SB5(1:nFrames,[1 3])'*scale);
ysb5_ = round(SB5(1:nFrames,[2 4])'*scale);
SB4 = csvread('clust_S_B004.csv');
xsb4_ = round(SB4(1:nFrames,[1 3])'*scale);
ysb4_ = round(SB4(1:nFrames,[2 4])'*scale);
SB3 = csvread('clust_S_B003.csv');
xsb3_ = round(SB3(1:nFrames,[1 3])'*scale);
ysb3_ = round(SB3(1:nFrames,[2 4])'*scale);
SB2 = csvread('clust_S_B002.csv');
xsb2_ = round(SB2(1:nFrames,[1 3])'*scale);
ysb2_ = round(SB2(1:nFrames,[2 4])'*scale);
SB1 = csvread('clust_S_B001.csv');
xsb1_ = round(SB1(1:nFrames,[1 3])'*scale);
ysb1_ = round(SB1(1:nFrames,[2 4])'*scale);

% C videos
% no 5
KTC4 = csvread('clust_KT_C004.csv');
xktc4_ = round(KTC4(1:nFrames,[1 3])'*scale);
yktc4_ = round(KTC4(1:nFrames,[2 4])'*scale);
KTC3 = csvread('clust_KT_C003.csv');
xktc3_ = round(KTC3(1:nFrames,[1 3])'*scale);
yktc3_ = round(KTC3(1:nFrames,[2 4])'*scale);
KTC2 = csvread('clust_KT_C002.csv');
xktc2_ = round(KTC2(1:nFrames,[1 3])'*scale);
yktc2_ = round(KTC2(1:nFrames,[2 4])'*scale);
KTC1 = csvread('clust_KT_C001.csv');
xktc1_ = round(KTC1(1:nFrames,[1 3])'*scale);
yktc1_ = round(KTC1(1:nFrames,[2 4])'*scale);

NPC5 = csvread('clust_NP_C005.csv');
xnpc5_ = round(NPC5(1:nFrames,[1 3])'*scale);
ynpc5_ = round(NPC5(1:nFrames,[2 4])'*scale);
NPC4 = csvread('clust_NP_C004.csv');
xnpc4_ = round(NPC4(1:nFrames,[1 3])'*scale);
ynpc4_ = round(NPC4(1:nFrames,[2 4])'*scale);
NPC3 = csvread('clust_NP_C003.csv');
xnpc3_ = round(NPC3(1:nFrames,[1 3])'*scale);
ynpc3_ = round(NPC3(1:nFrames,[2 4])'*scale);
NPC2 = csvread('clust_NP_C002.csv');
xnpc2_ = round(NPC2(1:nFrames,[1 3])'*scale);
ynpc2_ = round(NPC2(1:nFrames,[2 4])'*scale);
NPC1 = csvread('clust_NP_C001.csv');
xnpc1_ = round(NPC1(1:nFrames,[1 3])'*scale);
ynpc1_ = round(NPC1(1:nFrames,[2 4])'*scale);

SC5 = csvread('clust_S_C005.csv');
xsc5_ = round(SC5(1:nFrames,[1 3])'*scale);
ysc5_ = round(SC5(1:nFrames,[2 4])'*scale);
SC4 = csvread('clust_S_C004.csv');
xsc4_ = round(SC4(1:nFrames,[1 3])'*scale);
ysc4_ = round(SC4(1:nFrames,[2 4])'*scale);
SC3 = csvread('clust_S_C003.csv');
xsc3_ = round(SC3(1:nFrames,[1 3])'*scale);
ysc3_ = round(SC3(1:nFrames,[2 4])'*scale);
SC2 = csvread('clust_S_C002.csv');
xsc2_ = round(SC2(1:nFrames,[1 3])'*scale);
ysc2_ = round(SC2(1:nFrames,[2 4])'*scale);
SC1 = csvread('clust_S_C001.csv');
xsc1_ = round(SC1(1:nFrames,[1 3])'*scale);
ysc1_ = round(SC1(1:nFrames,[2 4])'*scale);

% D videos
KTD5 = csvread('clust_KT_D005.csv');
xktd5_ = round(KTD5(1:nFrames,[1 3])'*scale);
yktd5_ = round(KTD5(1:nFrames,[2 4])'*scale);
KTD4 = csvread('clust_KT_D004.csv');
xktd4_ = round(KTD4(1:nFrames,[1 3])'*scale);
yktd4_ = round(KTD4(1:nFrames,[2 4])'*scale);
KTD3 = csvread('clust_KT_D003.csv');
xktd3_ = round(KTD3(1:nFrames,[1 3])'*scale);
yktd3_ = round(KTD3(1:nFrames,[2 4])'*scale);
KTD2 = csvread('clust_KT_D002.csv');
xktd2_ = round(KTD2(1:nFrames,[1 3])'*scale);
yktd2_ = round(KTD2(1:nFrames,[2 4])'*scale);
KTD1 = csvread('clust_KT_D001.csv');
xktd1_ = round(KTD1(1:nFrames,[1 3])'*scale);
yktd1_ = round(KTD1(1:nFrames,[2 4])'*scale);

NPD5 = csvread('clust_NP_D005.csv');
xnpd5_ = round(NPD5(1:nFrames,[1 3])'*scale);
ynpd5_ = round(NPD5(1:nFrames,[2 4])'*scale);
NPD4 = csvread('clust_NP_D004.csv');
xnpd4_ = round(NPD4(1:nFrames,[1 3])'*scale);
ynpd4_ = round(NPD4(1:nFrames,[2 4])'*scale);
NPD3 = csvread('clust_NP_D003.csv');
xnpd3_ = round(NPD3(1:nFrames,[1 3])'*scale);
ynpd3_ = round(NPD3(1:nFrames,[2 4])'*scale);
NPD2 = csvread('clust_NP_D002.csv');
xnpd2_ = round(NPD2(1:nFrames,[1 3])'*scale);
ynpd2_ = round(NPD2(1:nFrames,[2 4])'*scale);
NPD1 = csvread('clust_NP_D001.csv');
xnpd1_ = round(NPD1(1:nFrames,[1 3])'*scale);
ynpd1_ = round(NPD1(1:nFrames,[2 4])'*scale);

SD5 = csvread('clust_S_D005.csv');
xsd5_ = round(SD5(1:nFrames,[1 3])'*scale);
ysd5_ = round(SD5(1:nFrames,[2 4])'*scale);
SD4 = csvread('clust_S_D004.csv');
xsd4_ = round(SD4(1:nFrames,[1 3])'*scale);
ysd4_ = round(SD4(1:nFrames,[2 4])'*scale);
SD3 = csvread('clust_S_D003.csv');
xsd3_ = round(SD3(1:nFrames,[1 3])'*scale);
ysd3_ = round(SD3(1:nFrames,[2 4])'*scale);
SD2 = csvread('clust_S_D002.csv');
xsd2_ = round(SD2(1:nFrames,[1 3])'*scale);
ysd2_ = round(SD2(1:nFrames,[2 4])'*scale);
SD1 = csvread('clust_S_D001.csv');
xsd1_ = round(SD1(1:nFrames,[1 3])'*scale);
ysd1_ = round(SD1(1:nFrames,[2 4])'*scale);

% E videos
KTE5 = csvread('clust_KT_E005.csv');
xkte5_ = round(KTE5(1:nFrames,[1 3])'*scale);
ykte5_ = round(KTE5(1:nFrames,[2 4])'*scale);
KTE4 = csvread('clust_KT_E004.csv');
xkte4_ = round(KTE4(1:nFrames,[1 3])'*scale);
ykte4_ = round(KTE4(1:nFrames,[2 4])'*scale);
KTE3 = csvread('clust_KT_E003.csv');
xkte3_ = round(KTE3(1:nFrames,[1 3])'*scale);
ykte3_ = round(KTE3(1:nFrames,[2 4])'*scale);
KTE2 = csvread('clust_KT_E002.csv');
xkte2_ = round(KTE2(1:nFrames,[1 3])'*scale);
ykte2_ = round(KTE2(1:nFrames,[2 4])'*scale);
KTE1 = csvread('clust_KT_E001.csv');
xkte1_ = round(KTE1(1:nFrames,[1 3])'*scale);
ykte1_ = round(KTE1(1:nFrames,[2 4])'*scale);

NPE5 = csvread('clust_NP_E005.csv');
xnpe5_ = round(NPE5(1:nFrames,[1 3])'*scale);
ynpe5_ = round(NPE5(1:nFrames,[2 4])'*scale);
NPE4 = csvread('clust_NP_E004.csv');
xnpe4_ = round(NPE4(1:nFrames,[1 3])'*scale);
ynpe4_ = round(NPE4(1:nFrames,[2 4])'*scale);
NPE3 = csvread('clust_NP_E003.csv');
xnpe3_ = round(NPE3(1:nFrames,[1 3])'*scale);
ynpe3_ = round(NPE3(1:nFrames,[2 4])'*scale);
% no 2
NPE1 = csvread('clust_NP_E001.csv');
xnpe1_ = round(NPE1(1:nFrames,[1 3])'*scale);
ynpe1_ = round(NPE1(1:nFrames,[2 4])'*scale);

SE5 = csvread('clust_S_E005.csv');
xse5_ = round(SE5(1:nFrames,[1 3])'*scale);
yse5_ = round(SE5(1:nFrames,[2 4])'*scale);
SE4 = csvread('clust_S_E004.csv');
xse4_ = round(SE4(1:nFrames,[1 3])'*scale);
yse4_ = round(SE4(1:nFrames,[2 4])'*scale);
SE3 = csvread('clust_S_E003.csv');
xse3_ = round(SE3(1:nFrames,[1 3])'*scale);
yse3_ = round(SE3(1:nFrames,[2 4])'*scale);
SE2 = csvread('clust_S_E002.csv');
xse2_ = round(SE2(1:nFrames,[1 3])'*scale);
yse2_ = round(SE2(1:nFrames,[2 4])'*scale);
SE1 = csvread('clust_S_E001.csv');
xse1_ = round(SE1(1:nFrames,[1 3])'*scale);
yse1_ = round(SE1(1:nFrames,[2 4])'*scale);

% F videos
KTF5 = csvread('clust_KT_F005.csv');
xktf5_ = round(KTF5(1:nFrames,[1 3])'*scale);
yktf5_ = round(KTF5(1:nFrames,[2 4])'*scale);
KTF4 = csvread('clust_KT_F004.csv');
xktf4_ = round(KTF4(1:nFrames,[1 3])'*scale);
yktf4_ = round(KTF4(1:nFrames,[2 4])'*scale);
KTF3 = csvread('clust_KT_F003.csv');
xktf3_ = round(KTF3(1:nFrames,[1 3])'*scale);
yktf3_ = round(KTF3(1:nFrames,[2 4])'*scale);
KTF2 = csvread('clust_KT_F002.csv');
xktf2_ = round(KTF2(1:nFrames,[1 3])'*scale);
yktf2_ = round(KTF2(1:nFrames,[2 4])'*scale);
KTF1 = csvread('clust_KT_F001.csv');
xktf1_ = round(KTF1(1:nFrames,[1 3])'*scale);
yktf1_ = round(KTF1(1:nFrames,[2 4])'*scale);

% no 5
NPF4 = csvread('clust_NP_F004.csv');
xnpf4_ = round(NPF4(1:nFrames,[1 3])'*scale);
ynpf4_ = round(NPF4(1:nFrames,[2 4])'*scale);
NPF3 = csvread('clust_NP_F003.csv');
xnpf3_ = round(NPF3(1:nFrames,[1 3])'*scale);
ynpf3_ = round(NPF3(1:nFrames,[2 4])'*scale);
% no 2
NPF1 = csvread('clust_NP_F001.csv');
xnpf1_ = round(NPF1(1:nFrames,[1 3])'*scale);
ynpf1_ = round(NPF1(1:nFrames,[2 4])'*scale);

SF5 = csvread('clust_S_F005.csv');
xsf5_ = round(SF5(1:nFrames,[1 3])'*scale);
ysf5_ = round(SF5(1:nFrames,[2 4])'*scale);
SF4 = csvread('clust_S_F004.csv');
xsf4_ = round(SF4(1:nFrames,[1 3])'*scale);
ysf4_ = round(SF4(1:nFrames,[2 4])'*scale);
SF3 = csvread('clust_S_F003.csv');
xsf3_ = round(SF3(1:nFrames,[1 3])'*scale);
ysf3_ = round(SF3(1:nFrames,[2 4])'*scale);
SF2 = csvread('clust_S_F002.csv');
xsf2_ = round(SF2(1:nFrames,[1 3])'*scale);
ysf2_ = round(SF2(1:nFrames,[2 4])'*scale);
SF1 = csvread('clust_S_F001.csv');
xsf1_ = round(SF1(1:nFrames,[1 3])'*scale);
ysf1_ = round(SF1(1:nFrames,[2 4])'*scale);

% G videos
KTG5 = csvread('clust_KT_G005.csv');
xktg5_ = round(KTG5(1:nFrames,[1 3])'*scale);
yktg5_ = round(KTG5(1:nFrames,[2 4])'*scale);
KTG4 = csvread('clust_KT_G004.csv');
xktg4_ = round(KTG4(1:nFrames,[1 3])'*scale);
yktg4_ = round(KTG4(1:nFrames,[2 4])'*scale);
KTG3 = csvread('clust_KT_G003.csv');
xktg3_ = round(KTG3(1:nFrames,[1 3])'*scale);
yktg3_ = round(KTG3(1:nFrames,[2 4])'*scale);
KTG2 = csvread('clust_KT_G002.csv');
xktg2_ = round(KTG2(1:nFrames,[1 3])'*scale);
yktg2_ = round(KTG2(1:nFrames,[2 4])'*scale);
KTG1 = csvread('clust_KT_G001.csv');
xktg1_ = round(KTG1(1:nFrames,[1 3])'*scale);
yktg1_ = round(KTG1(1:nFrames,[2 4])'*scale);

% no NP G videos

SG5 = csvread('clust_S_G005.csv');
xsg5_ = round(SG5(1:nFrames,[1 3])'*scale);
ysg5_ = round(SG5(1:nFrames,[2 4])'*scale);
SG4 = csvread('clust_S_G004.csv');
xsg4_ = round(SG4(1:nFrames,[1 3])'*scale);
ysg4_ = round(SG4(1:nFrames,[2 4])'*scale);
SG3 = csvread('clust_S_G003.csv');
xsg3_ = round(SG3(1:nFrames,[1 3])'*scale);
ysg3_ = round(SG3(1:nFrames,[2 4])'*scale);
SG2 = csvread('clust_S_G002.csv');
xsg2_ = round(SG2(1:nFrames,[1 3])'*scale);
ysg2_ = round(SG2(1:nFrames,[2 4])'*scale);
SG1 = csvread('clust_S_G001.csv');
xsg1_ = round(SG1(1:nFrames,[1 3])'*scale);
ysg1_ = round(SG1(1:nFrames,[2 4])'*scale);

% H videos
KTH5 = csvread('clust_KT_H005.csv');
xkth5_ = round(KTH5(1:nFrames,[1 3])'*scale);
ykth5_ = round(KTH5(1:nFrames,[2 4])'*scale);
KTH4 = csvread('clust_KT_H004.csv');
xkth4_ = round(KTH4(1:nFrames,[1 3])'*scale);
ykth4_ = round(KTH4(1:nFrames,[2 4])'*scale);
KTH3 = csvread('clust_KT_H003.csv');
xkth3_ = round(KTH3(1:nFrames,[1 3])'*scale);
ykth3_ = round(KTH3(1:nFrames,[2 4])'*scale);
% no 1 or 2

NPH5 = csvread('clust_NP_H005.csv');
xnph5_ = round(NPH5(1:nFrames,[1 3])'*scale);
ynph5_ = round(NPH5(1:nFrames,[2 4])'*scale);
NPH4 = csvread('clust_NP_H004.csv');
xnph4_ = round(NPH4(1:nFrames,[1 3])'*scale);
ynph4_ = round(NPH4(1:nFrames,[2 4])'*scale);
% no 3
NPH2 = csvread('clust_NP_H002.csv');
xnph2_ = round(NPH2(1:nFrames,[1 3])'*scale);
ynph2_ = round(NPH2(1:nFrames,[2 4])'*scale);
% no 1

SH5 = csvread('clust_S_H005.csv');
xsh5_ = round(SH5(1:nFrames,[1 3])'*scale);
ysh5_ = round(SH5(1:nFrames,[2 4])'*scale);
SH4 = csvread('clust_S_H004.csv');
xsh4_ = round(SH4(1:nFrames,[1 3])'*scale);
ysh4_ = round(SH4(1:nFrames,[2 4])'*scale);
SH3 = csvread('clust_S_H003.csv');
xsh3_ = round(SH3(1:nFrames,[1 3])'*scale);
ysh3_ = round(SH3(1:nFrames,[2 4])'*scale);
% no 2
SH1 = csvread('clust_S_H001.csv');
xsh1_ = round(SH1(1:nFrames,[1 3])'*scale);
ysh1_ = round(SH1(1:nFrames,[2 4])'*scale);

% I videos
KTI5 = csvread('clust_KT_I005.csv');
xkti5_ = round(KTI5(1:nFrames,[1 3])'*scale);
ykti5_ = round(KTI5(1:nFrames,[2 4])'*scale);
% no 4
KTI3 = csvread('clust_KT_I003.csv');
xkti3_ = round(KTI3(1:nFrames,[1 3])'*scale);
ykti3_ = round(KTI3(1:nFrames,[2 4])'*scale);
KTI2 = csvread('clust_KT_I002.csv');
xkti2_ = round(KTI2(1:nFrames,[1 3])'*scale);
ykti2_ = round(KTI2(1:nFrames,[2 4])'*scale);
KTI1 = csvread('clust_KT_I001.csv');
xkti1_ = round(KTI1(1:nFrames,[1 3])'*scale);
ykti1_ = round(KTI1(1:nFrames,[2 4])'*scale);

NPI5 = csvread('clust_NP_I005.csv');
xnpi5_ = round(NPI5(1:nFrames,[1 3])'*scale);
ynpi5_ = round(NPI5(1:nFrames,[2 4])'*scale);
NPI4 = csvread('clust_NP_I004.csv');
xnpi4_ = round(NPI4(1:nFrames,[1 3])'*scale);
ynpi4_ = round(NPI4(1:nFrames,[2 4])'*scale);
NPI3 = csvread('clust_NP_I003.csv');
xnpi3_ = round(NPI3(1:nFrames,[1 3])'*scale);
ynpi3_ = round(NPI3(1:nFrames,[2 4])'*scale);
NPI2 = csvread('clust_NP_I002.csv');
xnpi2_ = round(NPI2(1:nFrames,[1 3])'*scale);
ynpi2_ = round(NPI2(1:nFrames,[2 4])'*scale);
% no 1

SI5 = csvread('clust_S_I005.csv');
xsi5_ = round(SI5(1:nFrames,[1 3])'*scale);
ysi5_ = round(SI5(1:nFrames,[2 4])'*scale);
SI4 = csvread('clust_S_I004.csv');
xsi4_ = round(SI4(1:nFrames,[1 3])'*scale);
ysi4_ = round(SI4(1:nFrames,[2 4])'*scale);
SI3 = csvread('clust_S_I003.csv');
xsi3_ = round(SI3(1:nFrames,[1 3])'*scale);
ysi3_ = round(SI3(1:nFrames,[2 4])'*scale);
SI2 = csvread('clust_S_I002.csv');
xsi2_ = round(SI2(1:nFrames,[1 3])'*scale);
ysi2_ = round(SI2(1:nFrames,[2 4])'*scale);
SI1 = csvread('clust_S_I001.csv');
xsi1_ = round(SI1(1:nFrames,[1 3])'*scale);
ysi1_ = round(SI1(1:nFrames,[2 4])'*scale);

%% independent hmm for each dimension 
% sequence for x and y data of most prominent cluster
start  = 100;
frames = 800;
seq1 = [xsg3_(1,start:frames),xnpi3_(1,start:frames),xsg5_(1,start:frames),xnpf4_(1,start:frames),xsf5_(1,start:frames),xsg2_(1,start:frames),xnph5_(1,start:frames),xnpc3_(1,start:frames),xnpc2_(1,start:frames),xse2_(1,start:frames),xnpb2_(1,start:frames),xsb2_(1,start:frames),xsd3_(1,start:frames),xktf4_(1,start:frames),xsh4_(1,start:frames),xnpb4_(1,start:frames),xsf2_(1,start:frames),xnpc4_(1,start:frames),xse3_(1,start:frames),xsh5_(1,start:frames),xnpd3_(1,start:frames),xktg2_(1,start:frames),xkte4_(1,start:frames),xktf5_(1,start:frames),xnpi4_(1,start:frames),xkth4_(1,start:frames),xsc3_(1,start:frames),xkti2_(1,start:frames),xsi4_(1,start:frames),xsh3_(1,start:frames),xktc3_(1,start:frames),xse4_(1,start:frames),xsb3_(1,start:frames),xnph4_(1,start:frames),xsf4_(1,start:frames),xnpb3_(1,start:frames),xkti3_(1,start:frames),xnpi5_(1,start:frames),xnpi2_(1,start:frames),xkth3_(1,start:frames),xktg4_(1,start:frames),xktf2_(1,start:frames),xsb4_(1,start:frames),xkte2_(1,start:frames),xktg3_(1,start:frames),xktb3_(1,start:frames),xkti5_(1,start:frames),xnpd5_(1,start:frames),xktd2_(1,start:frames),xsg4_(1,start:frames),xkth5_(1,start:frames),xktf3_(1,start:frames),xktb4_(1,start:frames),xnpc5_(1,start:frames),xktg5_(1,start:frames),xktd3_(1,start:frames),xsi5_(1,start:frames),xnpd4_(1,start:frames),xnpf3_(1,start:frames),xktd5_(1,start:frames),xkte3_(1,start:frames),xsd2_(1,start:frames),xnpe5_(1,start:frames),xse5_(1,start:frames),xnpe4_(1,start:frames),xsf3_(1,start:frames),xktb2_(1,start:frames),xnph2_(1,start:frames),xsd5_(1,start:frames),xsc5_(1,start:frames),xnpd2_(1,start:frames),xktd4_(1,start:frames),xsi2_(1,start:frames),xsb5_(1,start:frames),xsc2_(1,start:frames),xktc2_(1,start:frames),xkte5_(1,start:frames),xktc4_(1,start:frames),xsd4_(1,start:frames),xsc4_(1,start:frames),xsi3_(1,start:frames),xnpe3_(1,start:frames);
        ysg3_(1,start:frames),ynpi3_(1,start:frames),ysg5_(1,start:frames),ynpf4_(1,start:frames),ysf5_(1,start:frames),ysg2_(1,start:frames),ynph5_(1,start:frames),ynpc3_(1,start:frames),ynpc2_(1,start:frames),yse2_(1,start:frames),ynpb2_(1,start:frames),ysb2_(1,start:frames),ysd3_(1,start:frames),yktf4_(1,start:frames),ysh4_(1,start:frames),ynpb4_(1,start:frames),ysf2_(1,start:frames),ynpc4_(1,start:frames),yse3_(1,start:frames),ysh5_(1,start:frames),ynpd3_(1,start:frames),yktg2_(1,start:frames),ykte4_(1,start:frames),yktf5_(1,start:frames),ynpi4_(1,start:frames),ykth4_(1,start:frames),ysc3_(1,start:frames),ykti2_(1,start:frames),ysi4_(1,start:frames),ysh3_(1,start:frames),yktc3_(1,start:frames),yse4_(1,start:frames),ysb3_(1,start:frames),ynph4_(1,start:frames),ysf4_(1,start:frames),ynpb3_(1,start:frames),ykti3_(1,start:frames),ynpi5_(1,start:frames),ynpi2_(1,start:frames),ykth3_(1,start:frames),yktg4_(1,start:frames),yktf2_(1,start:frames),ysb4_(1,start:frames),ykte2_(1,start:frames),yktg3_(1,start:frames),yktb3_(1,start:frames),ykti5_(1,start:frames),ynpd5_(1,start:frames),yktd2_(1,start:frames),ysg4_(1,start:frames),ykth5_(1,start:frames),yktf3_(1,start:frames),yktb4_(1,start:frames),ynpc5_(1,start:frames),yktg5_(1,start:frames),yktd3_(1,start:frames),ysi5_(1,start:frames),ynpd4_(1,start:frames),ynpf3_(1,start:frames),yktd5_(1,start:frames),ykte3_(1,start:frames),ysd2_(1,start:frames),ynpe5_(1,start:frames),yse5_(1,start:frames),ynpe4_(1,start:frames),ysf3_(1,start:frames),yktb2_(1,start:frames),ynph2_(1,start:frames),ysd5_(1,start:frames),ysc5_(1,start:frames),ynpd2_(1,start:frames),yktd4_(1,start:frames),ysi2_(1,start:frames),ysb5_(1,start:frames),ysc2_(1,start:frames),yktc2_(1,start:frames),ykte5_(1,start:frames),yktc4_(1,start:frames),ysd4_(1,start:frames),ysc4_(1,start:frames),ysi3_(1,start:frames),ynpe3_(1,start:frames)];
% sequence for x and y data of second most prominent cluster
seq2 = [xsg3_(2,start:frames),xnpi3_(2,start:frames),xsg5_(2,start:frames),xnpf4_(2,start:frames),xsf5_(2,start:frames),xsg2_(2,start:frames),xnph5_(2,start:frames),xnpc3_(2,start:frames),xnpc2_(2,start:frames),xse2_(2,start:frames),xnpb2_(2,start:frames),xsb2_(2,start:frames),xsd3_(2,start:frames),xktf4_(2,start:frames),xsh4_(2,start:frames),xnpb4_(2,start:frames),xsf2_(2,start:frames),xnpc4_(2,start:frames),xse3_(2,start:frames),xsh5_(2,start:frames),xnpd3_(2,start:frames),xktg2_(2,start:frames),xkte4_(2,start:frames),xktf5_(2,start:frames),xnpi4_(2,start:frames),xkth4_(2,start:frames),xsc3_(2,start:frames),xkti2_(2,start:frames),xsi4_(2,start:frames),xsh3_(2,start:frames),xktc3_(2,start:frames),xse4_(2,start:frames),xsb3_(2,start:frames),xnph4_(2,start:frames),xsf4_(2,start:frames),xnpb3_(2,start:frames),xkti3_(2,start:frames),xnpi5_(2,start:frames),xnpi2_(2,start:frames),xkth3_(2,start:frames),xktg4_(2,start:frames),xktf2_(2,start:frames),xsb4_(2,start:frames),xkte2_(2,start:frames),xktg3_(2,start:frames),xktb3_(2,start:frames),xkti5_(2,start:frames),xnpd5_(2,start:frames),xktd2_(2,start:frames),xsg4_(2,start:frames),xkth5_(2,start:frames),xktf3_(2,start:frames),xktb4_(2,start:frames),xnpc5_(2,start:frames),xktg5_(2,start:frames),xktd3_(2,start:frames),xsi5_(2,start:frames),xnpd4_(2,start:frames),xnpf3_(2,start:frames),xktd5_(2,start:frames),xkte3_(2,start:frames),xsd2_(2,start:frames),xnpe5_(2,start:frames),xse5_(2,start:frames),xnpe4_(2,start:frames),xsf3_(2,start:frames),xktb2_(2,start:frames),xnph2_(2,start:frames),xsd5_(2,start:frames),xsc5_(2,start:frames),xnpd2_(2,start:frames),xktd4_(2,start:frames),xsi2_(2,start:frames),xsb5_(2,start:frames),xsc2_(2,start:frames),xktc2_(2,start:frames),xkte5_(2,start:frames),xktc4_(2,start:frames),xsd4_(2,start:frames),xsc4_(2,start:frames),xsi3_(2,start:frames),xnpe3_(2,start:frames);
        ysg3_(2,start:frames),ynpi3_(2,start:frames),ysg5_(2,start:frames),ynpf4_(2,start:frames),ysf5_(2,start:frames),ysg2_(2,start:frames),ynph5_(2,start:frames),ynpc3_(2,start:frames),ynpc2_(2,start:frames),yse2_(2,start:frames),ynpb2_(2,start:frames),ysb2_(2,start:frames),ysd3_(2,start:frames),yktf4_(2,start:frames),ysh4_(2,start:frames),ynpb4_(2,start:frames),ysf2_(2,start:frames),ynpc4_(2,start:frames),yse3_(2,start:frames),ysh5_(2,start:frames),ynpd3_(2,start:frames),yktg2_(2,start:frames),ykte4_(2,start:frames),yktf5_(2,start:frames),ynpi4_(2,start:frames),ykth4_(2,start:frames),ysc3_(2,start:frames),ykti2_(2,start:frames),ysi4_(2,start:frames),ysh3_(2,start:frames),yktc3_(2,start:frames),yse4_(2,start:frames),ysb3_(2,start:frames),ynph4_(2,start:frames),ysf4_(2,start:frames),ynpb3_(2,start:frames),ykti3_(2,start:frames),ynpi5_(2,start:frames),ynpi2_(2,start:frames),ykth3_(2,start:frames),yktg4_(2,start:frames),yktf2_(2,start:frames),ysb4_(2,start:frames),ykte2_(2,start:frames),yktg3_(2,start:frames),yktb3_(2,start:frames),ykti5_(2,start:frames),ynpd5_(2,start:frames),yktd2_(2,start:frames),ysg4_(2,start:frames),ykth5_(2,start:frames),yktf3_(2,start:frames),yktb4_(2,start:frames),ynpc5_(2,start:frames),yktg5_(2,start:frames),yktd3_(2,start:frames),ysi5_(2,start:frames),ynpd4_(2,start:frames),ynpf3_(2,start:frames),yktd5_(2,start:frames),ykte3_(2,start:frames),ysd2_(2,start:frames),ynpe5_(2,start:frames),yse5_(2,start:frames),ynpe4_(2,start:frames),ysf3_(2,start:frames),yktb2_(2,start:frames),ynph2_(2,start:frames),ysd5_(2,start:frames),ysc5_(2,start:frames),ynpd2_(2,start:frames),yktd4_(2,start:frames),ysi2_(2,start:frames),ysb5_(2,start:frames),ysc2_(2,start:frames),yktc2_(2,start:frames),ykte5_(2,start:frames),yktc4_(2,start:frames),ysd4_(2,start:frames),ysc4_(2,start:frames),ysi3_(2,start:frames),ynpe3_(2,start:frames)];
   
% kt state 1, np state 2, s state 3
size_ones = ones(1,frames-start+1); % all variables have same # of frames analyzed so same length
states = [3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,2*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,1*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,3*size_ones,1*size_ones,3*size_ones,3*size_ones,1*size_ones,3*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,1*size_ones,2*size_ones,2*size_ones,1*size_ones,1*size_ones,1*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,1*size_ones,3*size_ones,2*size_ones,2*size_ones,1*size_ones,1*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,1*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,1*size_ones,3*size_ones,3*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,3*size_ones,3*size_ones,3*size_ones,2*size_ones];

[trans_estx,emis_estx] = hmmestimate(seq1(1,:),states); % seq# here corresponds to seq# in saved .csv below
[trans_esty,emis_esty] = hmmestimate(seq1(2,:),states);
% fix Nan issue
min = 1e-10; % choose a small non-zero value
emis_estx(emis_estx < min) = min;
emis_esty(emis_esty < min) = min;

% sequence testing, all "XXX_X_001.csv" data sets left out of training
seq1 = [xktb1_(1,start:frames),xktc1_(1,start:frames),xktd1_(1,start:frames),xkte1_(1,start:frames),xktf1_(1,start:frames),xktg1_(1,start:frames),xkti1_(1,start:frames),xnpb1_(1,start:frames),xnpc1_(1,start:frames),xnpd1_(1,start:frames),xnpe1_(1,start:frames),xnpf1_(1,start:frames),xsb1_(1,start:frames),xsc1_(1,start:frames),xsd1_(1,start:frames),xse1_(1,start:frames),xsf1_(1,start:frames),xsg1_(1,start:frames),xsh1_(1,start:frames),xsi1_(1,start:frames); 
        yktb1_(1,start:frames),yktc1_(1,start:frames),yktd1_(1,start:frames),ykte1_(1,start:frames),yktf1_(1,start:frames),yktg1_(1,start:frames),ykti1_(1,start:frames),ynpb1_(1,start:frames),ynpc1_(1,start:frames),ynpd1_(1,start:frames),ynpe1_(1,start:frames),ynpf1_(1,start:frames),ysb1_(1,start:frames),ysc1_(1,start:frames),ysd1_(1,start:frames),yse1_(1,start:frames),ysf1_(1,start:frames),ysg1_(1,start:frames),ysh1_(1,start:frames),ysi1_(1,start:frames)];
seq2 = [xktb1_(2,start:frames),xktc1_(2,start:frames),xktd1_(2,start:frames),xkte1_(2,start:frames),xktf1_(2,start:frames),xktg1_(2,start:frames),xkti1_(2,start:frames),xnpb1_(2,start:frames),xnpc1_(2,start:frames),xnpd1_(2,start:frames),xnpe1_(2,start:frames),xnpf1_(2,start:frames),xsb1_(2,start:frames),xsc1_(2,start:frames),xsd1_(2,start:frames),xse1_(2,start:frames),xsf1_(2,start:frames),xsg1_(2,start:frames),xsh1_(2,start:frames),xsi1_(2,start:frames); 
        yktb1_(2,start:frames),yktc1_(2,start:frames),yktd1_(2,start:frames),ykte1_(2,start:frames),yktf1_(2,start:frames),yktg1_(2,start:frames),ykti1_(2,start:frames),ynpb1_(2,start:frames),ynpc1_(2,start:frames),ynpd1_(2,start:frames),ynpe1_(2,start:frames),ynpf1_(2,start:frames),ysb1_(2,start:frames),ysc1_(2,start:frames),ysd1_(2,start:frames),yse1_(2,start:frames),ysf1_(2,start:frames),ysg1_(2,start:frames),ysh1_(2,start:frames),ysi1_(2,start:frames)];
seq1(seq1>607)=607; % clip (largest is 615)
seq2(seq2>=470)=470;
numstates = size(size_ones,2);
seqnum = size(seq1,2)/numstates; % number of sequences testing
results = zeros(9,8*3);
for i=1:seqnum
    seqi = seq1(:,(1+(i-1)*numstates):(i*numstates));
    pstatesx = hmmdecode(seqi(1,:), trans_estx, emis_estx);
    pstatesy = hmmdecode(seqi(2,:), trans_esty, emis_esty);
    xprob = sum(pstatesx,2)/numstates;
    yprob = sum(pstatesy,2)/numstates;
    prob = [0; 0; 0];%(xprob + yprob)/2;
    if i>7 
        if i>12 % s
            results(7:9,1+(i-1-12)*3) = prob;
            results(7:9,2+(i-1-12)*3) = xprob;
            results(7:9,3+(i-1-12)*3) = yprob;
        else % np
            results(4:6,1+(i-1-7)*3) = prob;
            results(4:6,2+(i-1-7)*3) = xprob;
            results(4:6,3+(i-1-7)*3) = yprob;
        end
    else % kt
        results(1:3,1+(i-1)*3) = prob;
        results(1:3,2+(i-1)*3) = xprob;
        results(1:3,3+(i-1)*3) = yprob;
    end
end
                
csvwrite('test_870frames_pt3alpha_seq1_test1_4-2.csv',results,1,1);
