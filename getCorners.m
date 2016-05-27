function [clust1,clust2] = getCorners(obj,alpha,nFrames)
    % function takes a video object and processes it for nFrames number
    % of frames obtaining the top two clusters of edges in each frame. 
    % The clusters are tracked by their xy coords and alpha is the
    % smoothing average parameter that sets the weight on new values for
    % each frame.
    % clust1 and clust2 are nFrames by 2 matrices with the xy coords for
    % their respective cluster in each frame.

    clust1 = zeros(nFrames,2);
    clust2 = zeros(nFrames,2);

    % get initial cluster values before looping - want to start running ave
    % with actual location
    I=read(obj,1);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
    [C,S] = subclust(x,0.3);                    % cluster points. Manipulate 2nd param?                      
    if size(C,1) > 0                            % initial values of top 2 clusters
        clust1(1,:) = C(1,:); 
    else
        clust1(1,:) = [0 0];
    end
    if size(C,1) > 1
        clust2(1,:) = C(2,:);
    else
        clust2(1,:) = [0 0];
    end
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