clear all; close all;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I001_capture1.avi');
alpha = 0.3;

frame_start = 100;
frame_end   = 400;
% get initial cluster values before looping - want to start running ave
% with actual location
I=read(obj,frame_start);
I = rgb2gray(I);
corners = detectHarrisFeatures(I);
x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
[C,S] = subclust(x,0.3);                    % cluster points. Manipulate 2nd param?                      
if size(C,1) > 0                            % initial values of top 2 clusters
    clust1 = C(1,:); 
else
    clust1 = [0 0];
end
if size(C,1) > 1
    clust2 = C(2,:);
else
    clust2 = [0 0];
end
for k=frame_start+1:frame_end
    I=read(obj,k);
    figure(1),imshow(I,[]);
    hold on;
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    plot(corners.selectStrongest(50));
    x = corners.selectStrongest(50).Location;   
    [C,S] = subclust(x,0.3); 
    % checks for when subclust() does not find two clusters
    if size(C,1) > 0
        clust1 = (1-alpha)*clust1 + alpha*C(1,:); 
    end
    if size(C,1) > 1
        clust2 = (1-alpha)*clust2+ alpha*C(2,:);
    end
    plot(clust1(1),clust1(2),'r*','LineWidth',2,'MarkerSize',10);
    plot(clust2(1),clust2(2),'r*','LineWidth',2,'MarkerSize',10);
end
alpha_ave = ones(1,10)/10;
clust1 = filter(alpha_ave,1,clust1);
clust2 = filter(alpha_ave,1,clust2);