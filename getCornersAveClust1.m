function clust1 = getCornersAveClust1(obj,alpha,frame_start,frame_end)
    % function takes a video object and processes it for nFrames number
    % of frames obtaining the top two clusters of edges in each frame. 
    % The clusters are tracked by their xy coords and alpha is the
    % smoothing average parameter that sets the weight on new values for
    % each frame.
    % clust1 and clust2 are nFrames by 2 matrices with the xy coords for
    % their respective cluster in each frame.
    ave_buff_flag = 0;
    if frame_start > 100
        ave_buff_flag = 1;
        frame_start = frame_start - 100;
    end
    nFrames = frame_end-frame_start+1;
    clust1 = zeros(nFrames,2);

    % get initial cluster values before looping - want to start running ave
    % with actual location
    I=read(obj,frame_start);
    I = rgb2gray(I);
    corners = detectHarrisFeatures(I);
    x = corners.selectStrongest(50).Location;   % x,y coordinates of top 50
    [C,S] = subclust(x,0.3);                    % cluster points. Manipulate 2nd param?                      
    if size(C,1) > 0                            % initial values of top 2 clusters
        clust1(1,:) = C(1,:); 
    else
        clust1(1,:) = [0 0];
    end
    for k=(frame_start+1):frame_end
        I=read(obj,k);
        I = rgb2gray(I);
        corners = detectHarrisFeatures(I);
        x = corners.selectStrongest(50).Location;   
        [C,S] = subclust(x,0.3); 
        % checks for when subclust() does not find a cluster
        if size(C,1) > 0
            clust1(k,:) = (1-alpha)*clust1(k-1,:) + alpha*C(1,:); 
        else
            clust1(k,:) = clust1(k-1,:);
        end
    end
    
    ave_param = ones(1,10)/10;
    clust1 = filter(ave_param,1,clust1);
    if ave_buff_flag
        clust1 = clust1(50:end,:);
    end
    
end