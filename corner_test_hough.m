obj=VideoReader('C:\Users\Jason\Documents\MATLAB\CSE576\Videos\Knot_Tying_D005_capture1.avi');
nFrames=obj.NumberOfFrames;
% I = imread('Boxes.png');
% I = rgb2gray(I);
% corners = detectHarrisFeatures(I);
% imshow(I); hold on;
% plot(corners.selectStrongest(50));
% for k=1:100%nFrames
%     I=read(obj,k);
%     figure(1),imshow(I,[]);
%     hold on;
%     I = rgb2gray(I);
%     corners = detectHarrisFeatures(I);
%     plot(corners.selectStrongest(50));
% end

% Compute Kernal for Convolution
%h = fspecial('average', 3);


% downsample corner detection
I=read(obj,1);
%%imageFeaturesPrev = imageFeatures;
for k=2:200
    I=read(obj,k);
    
    I2 = rgb2gray(I);
    
    BW = edge(I2, 'canny');
    [H,theta,rho] = hough(BW);
    
    figure(1),imshow(BW,[]);
    if mod(k,5) == 0
        hold on;
      
        %%%corners = detectHarrisFeatures(I);
        SURF = detectSURFFeatures(BW);
        %%plot(corners.selectStrongest(50));
        %%[imageFeatures, SURF] = extractFeatures(I, SURF);
        %%imagePairs = matchFeatures(imageFeatures, imageFeaturesPrev);
        %%imageFeaturesPrev = imageFeatures;
        plot(selectStrongest(SURF, 10)); 
    end
    
    %{ 
    figure(2)
    imshow(imadjust(mat2gray(H)),[],...
       'XData',theta,...
       'YData',rho,...
       'InitialMagnification','fit');
    xlabel('\theta (degrees)')
    ylabel('\rho')
    axis on
    axis normal
    hold on
    %}
    %colormap(hot)
    P = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
    x = theta(P(:,2));
    y = rho(P(:,1));
    plot(x,y,'s','color','black');
    lines = houghlines(BW,theta,rho,P,'FillGap',5,'MinLength',7);

    figure(2), imshow(I), hold on
    max_len = 0;
    for k = 1:length(lines)
       xy = [lines(k).point1; lines(k).point2];
       plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

       % Plot beginnings and ends of lines
       plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
       plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

       % Determine the endpoints of the longest line segment
       len = norm(lines(k).point1 - lines(k).point2);
       if ( len > max_len)
          max_len = len;
          xy_long = xy;
       end
     end
% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');

    
end

