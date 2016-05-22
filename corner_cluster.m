clear all; close all;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D005_capture1.avi');
nFrames=obj.NumberOfFrames;
new = 0.3; % variable to determine new cluster weight

% get initial cluster values before looping - want to start running ave
% with actual location
I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1 = C(1,:);                            % initial values
clust2 = C(2,:);
for k=2:100%nFrames
    I=read(obj,k);
    figure(1),imshow(I,[]);
    hold on;
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    %plot(corners.selectStrongest(50));
    x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
    [C,S] = subclust(x,0.3);                    % cluster points
    clust1 = (1-new)*clust1 + new*C(1,:);       % running ave for smoothing
    clust2 = (1-new)*clust2 + new*C(2,:);
    plot(clust1(1),clust1(2),'r*','LineWidth',2,'MarkerSize',10);
    plot(clust2(1),clust2(2),'r*','LineWidth',2,'MarkerSize',10);
    
end
