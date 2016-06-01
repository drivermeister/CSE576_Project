clear all; close all;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D001_capture1.avi');
nFrames=obj.NumberOfFrames;
new = 0.2; % variable to determine new cluster weight
frame_start = 100;
frame_end   = 200;
posx = zeros(1,frame_end - frame_start + 1);
posy = zeros(1,frame_end - frame_start + 1);

% get initial cluster values before looping - want to start running ave
% with actual location
I=read(obj,frame_start);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1 = C(1,:);                            % initial values
clust2 = C(2,:);
i = 1;
posx(i) = clust1(1,1);
posy(i) = clust2(1,1);
i = i + 1;
%C_old = C;
for k=(frame_start+1):frame_end%nFrames
    I=read(obj,k);
%     figure(1),imshow(I,[]);
%     hold on;
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    %plot(corners.selectStrongest(50));
    x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
    [C,S] = subclust(x,0.3);                    % cluster points
    %clust_move = zeros(size(C,1),2);
    %plot(C(:,1),C(:,2),'r*','LineWidth',2,'MarkerSize',10);
    clust1 = (1-new)*clust1 + new*C(1,:);       % running ave for smoothing
    clust2 = (1-new)*clust2 + new*C(2,:);
%     clust1 = C(1,:);
%     clust2 = C(2,:);
    posx(i) = clust1(1);
    posy(i) = clust2(2);
    i = i + 1;
    %plot(clust1(1),clust1(2),'r*','LineWidth',2,'MarkerSize',10);
    %plot(clust2(1),clust2(2),'r*','LineWidth',2,'MarkerSize',10);

end

% filter to further smooth
alpha = ones(1,10)/10;
posxave = filter(alpha,1,posx);
posyave = filter(alpha,1,posy);
% t = 1:(frame_end-frame_start+1);
% plot(t,posx);
% hold on;
% plot(t,posxave);


