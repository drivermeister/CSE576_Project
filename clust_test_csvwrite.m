clear all; close all;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D005_capture1.avi');
%nFrames=obj.NumberOfFrames;
new = 0.3; % variable to determine new cluster weight
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

% get initial cluster values before looping - want to start running ave
% with actual location
I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
%     figure(1),imshow(I,[]);
%     hold on;
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    %plot(corners.selectStrongest(50));
    x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
    [C,S] = subclust(x,0.3);                    % cluster points
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);       % running ave for smoothing
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
%     plot(clust1(k,1),clust1(k,2),'r*','LineWidth',2,'MarkerSize',10);
%     plot(clust2(k,1),clust2(k,2),'r*','LineWidth',2,'MarkerSize',10);
    
end

csvwrite('clust_KT_D005.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D004_capture1.avi');
new = 0.3; 
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3);                   
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);    
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
end

csvwrite('clust_KT_D004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D005_capture1.avi');
new = 0.3; 
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3);                   
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);    
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
end

csvwrite('clust_S_D005.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D004_capture1.avi');
new = 0.3; 
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3);                   
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);    
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
end

csvwrite('clust_S_D004.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D003_capture1.avi');
new = 0.3; 
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3);                   
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);    
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
end

csvwrite('clust_S_D003.csv',[clust1,clust2]);

obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D003_capture1.avi');
new = 0.3; 
nFrames = 100;
clust1 = zeros(nFrames,2);
clust2 = zeros(nFrames,2);

I=read(obj,1);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points
clust1(1,:) = C(1,:);                       % initial values of top 2 clusters
clust2(1,:) = C(2,:);
for k=2:nFrames
    I=read(obj,k);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3);                   
    clust1(k,:) = (1-new)*clust1(k-1,:) + new*C(1,:);    
    clust2(k,:) = (1-new)*clust2(k-1,:) + new*C(2,:);
end

csvwrite('clust_KT_D003.csv',[clust1,clust2]);
