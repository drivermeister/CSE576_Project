clear all; close all; 

%% import data - x and y has data for ee1 in row 1, ee2 in row 2
scale = 1; % parameter to play with, if desired
nFrames = 300; % frames to process. 870 is the max
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
seq = [xsg3_(1,:),xnpi3_(1,:),xsg5_(1,:),xnpf4_(1,:),xsf5_(1,:),xsg2_(1,:),xnph5_(1,:),xnpc3_(1,:),xnpc2_(1,:),xse2_(1,:),xnpb2_(1,:),xsb2_(1,:),xsd3_(1,:),xktf4_(1,:),xsh4_(1,:),xnpb4_(1,:),xsf2_(1,:),xnpc4_(1,:),xse3_(1,:),xsh5_(1,:),xnpd3_(1,:),xktg2_(1,:),xkte4_(1,:),xktf5_(1,:),xnpi4_(1,:),xkth4_(1,:),xsc3_(1,:),xkti2_(1,:),xsi4_(1,:),xsh3_(1,:),xktc3_(1,:),xse4_(1,:),xsb3_(1,:),xnph4_(1,:),xsf4_(1,:),xnpb3_(1,:),xkti3_(1,:),xnpi5_(1,:),xnpi2_(1,:),xkth3_(1,:),xktg4_(1,:),xktf2_(1,:),xsb4_(1,:),xkte2_(1,:),xktg3_(1,:),xktb3_(1,:),xkti5_(1,:),xnpd5_(1,:),xktd2_(1,:),xsg4_(1,:),xkth5_(1,:),xktf3_(1,:),xktb4_(1,:),xnpc5_(1,:),xktg5_(1,:),xktd3_(1,:),xsi5_(1,:),xnpd4_(1,:),xnpf3_(1,:),xktd5_(1,:),xkte3_(1,:),xsd2_(1,:),xnpe5_(1,:),xse5_(1,:),xnpe4_(1,:),xsf3_(1,:),xktb2_(1,:),xnph2_(1,:),xsd5_(1,:),xsc5_(1,:),xnpd2_(1,:),xktd4_(1,:),xsi2_(1,:),xsb5_(1,:),xsc2_(1,:),xktc2_(1,:),xkte5_(1,:),xktc4_(1,:),xsd4_(1,:),xsc4_(1,:),xsi3_(1,:),xnpe3_(1,:);
       ysg3_(1,:),ynpi3_(1,:),ysg5_(1,:),ynpf4_(1,:),ysf5_(1,:),ysg2_(1,:),ynph5_(1,:),ynpc3_(1,:),ynpc2_(1,:),yse2_(1,:),ynpb2_(1,:),ysb2_(1,:),ysd3_(1,:),yktf4_(1,:),ysh4_(1,:),ynpb4_(1,:),ysf2_(1,:),ynpc4_(1,:),yse3_(1,:),ysh5_(1,:),ynpd3_(1,:),yktg2_(1,:),ykte4_(1,:),yktf5_(1,:),ynpi4_(1,:),ykth4_(1,:),ysc3_(1,:),ykti2_(1,:),ysi4_(1,:),ysh3_(1,:),yktc3_(1,:),yse4_(1,:),ysb3_(1,:),ynph4_(1,:),ysf4_(1,:),ynpb3_(1,:),ykti3_(1,:),ynpi5_(1,:),ynpi2_(1,:),ykth3_(1,:),yktg4_(1,:),yktf2_(1,:),ysb4_(1,:),ykte2_(1,:),yktg3_(1,:),yktb3_(1,:),ykti5_(1,:),ynpd5_(1,:),yktd2_(1,:),ysg4_(1,:),ykth5_(1,:),yktf3_(1,:),yktb4_(1,:),ynpc5_(1,:),yktg5_(1,:),yktd3_(1,:),ysi5_(1,:),ynpd4_(1,:),ynpf3_(1,:),yktd5_(1,:),ykte3_(1,:),ysd2_(1,:),ynpe5_(1,:),yse5_(1,:),ynpe4_(1,:),ysf3_(1,:),yktb2_(1,:),ynph2_(1,:),ysd5_(1,:),ysc5_(1,:),ynpd2_(1,:),yktd4_(1,:),ysi2_(1,:),ysb5_(1,:),ysc2_(1,:),yktc2_(1,:),ykte5_(1,:),yktc4_(1,:),ysd4_(1,:),ysc4_(1,:),ysi3_(1,:),ynpe3_(1,:)];

% kt state 1, np state 2, s state 3
size_ones = ones(1,size(xktd5_,2)); % all variables have same # of frames analyzed so same length
states = [3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,2*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,1*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,3*size_ones,1*size_ones,3*size_ones,3*size_ones,1*size_ones,3*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,1*size_ones,2*size_ones,2*size_ones,1*size_ones,1*size_ones,1*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,2*size_ones,1*size_ones,1*size_ones,3*size_ones,2*size_ones,2*size_ones,1*size_ones,1*size_ones,3*size_ones,2*size_ones,3*size_ones,2*size_ones,3*size_ones,1*size_ones,2*size_ones,3*size_ones,3*size_ones,2*size_ones,1*size_ones,3*size_ones,3*size_ones,3*size_ones,1*size_ones,1*size_ones,1*size_ones,3*size_ones,3*size_ones,3*size_ones,2*size_ones];

[trans_estx,emis_estx] = hmmestimate(seq(1,:),states);
[trans_esty,emis_esty] = hmmestimate(seq(2,:),states);

% sequence testing, all "XXX_X_001.csv" data sets left out of training
%files = ['clust_KT_B001.csv', 'clust_KT_C001.csv', 'clust_KT_D001.csv', 'clust_KT_E001.csv', 'clust_KT_F001.csv', 'clust_KT_G001.csv', 'clust_KT_I001.csv', 'clust_NP_B001.csv', 'clust_NP_C001.csv', 'clust_NP_D001.csv', 'clust_NP_E001.csv', 'clust_NP_F001.csv', 'clust_S_B005.csv', 'clust_S_C005.csv', 'clust_S_D005.csv', 'clust_S_E005.csv', 'clust_S_F005.csv', 'clust_S_G005.csv', 'clust_S_H005.csv', 'clust_S_I005.csv'];
seq = [xktb1_(1,:),xktc1_(1,:),xktd1_(1,:),xkte1_(1,:),xktf1_(1,:),xktg1_(1,:),xkti1_(1,:),xnpb1_(1,:),xnpc1_(1,:),xnpd1_(1,:),xnpe1_(1,:),xnpf1_(1,:),xsb1_(1,:),xsc1_(1,:),xsd1_(1,:),xse1_(1,:),xsf1_(1,:),xsg1_(1,:),xsh1_(1,:),xsi1_(1,:); 
       yktb1_(1,:),yktc1_(1,:),yktd1_(1,:),ykte1_(1,:),yktf1_(1,:),yktg1_(1,:),ykti1_(1,:),ynpb1_(1,:),ynpc1_(1,:),ynpd1_(1,:),ynpe1_(1,:),ynpf1_(1,:),ysb1_(1,:),ysc1_(1,:),ysd1_(1,:),yse1_(1,:),ysf1_(1,:),ysg1_(1,:),ysh1_(1,:),ysi1_(1,:)];
seq(seq>607)=607; % clip (largest is 615)
states = 3*size_ones;
seqnum = size(seq,2)/size(states,2); % number of sequences testing
results = zeros(9,8*3);
for i=1:seqnum
    seqi = seq(:,(1+(i-1)*size(states,2)):(i*size(states,2)));
    pstatesx = hmmdecode(seqi(1,:), trans_estx, emis_estx);
    pstatesy = hmmdecode(seqi(2,:), trans_esty, emis_esty);
    xprob = sum(pstatesx,2)/size(states,2);
    yprob = sum(pstatesy,2)/size(states,2);
    prob = (xprob + yprob)/2;
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
                
csvwrite('test_300frames_pt3alpha.csv',results,1,1);
