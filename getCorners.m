function [clust1,clust2] = getCorners(obj,alpha,nFrames)
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
        I = rgb2gray(I);
        corners = detectHarrisFeatures(I);
        x = corners.selectStrongest(50).Location;   
        [C,S] = subclust(x,0.3); 
        % checks for when subclust() does not find two clusters
        if size(C,1) > 0
            clust1(k,:) = (1-alpha)*clust1(k-1,:) + alpha*C(1,:); 
        else
            clust1(k,:) = clust1(k-1,:);
        end
        if size(C,1) > 1
            clust2(k,:) = (1-alpha)*clust2(k-1,:) + alpha*C(2,:);
        else
            clust2(k,:) = clust2(k-1,:);
        end
    end
end