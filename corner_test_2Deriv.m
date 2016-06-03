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

%h = [ -1 0 1];

h = [ 0 -1 0; -1 4 -1; 0 -1 0];

%h = [ 1 0 -1];

% downsample corner detection
I=read(obj,1);
%%imageFeaturesPrev = imageFeatures;
for k=2:200
    I=read(obj,k);
    
    I2 = rgb2gray(I);
        
    I_a = imfilter(I2,h);
    figure(1),imshow(I_a,[]);
    if mod(k,5) == 0
        hold on;
      
        %%%corners = detectHarrisFeatures(I);
        SURF = detectSURFFeatures(I_a);
        %%plot(corners.selectStrongest(50));
        %%[imageFeatures, SURF] = extractFeatures(I, SURF);
        %%imagePairs = matchFeatures(imageFeatures, imageFeaturesPrev);
        %%imageFeaturesPrev = imageFeatures;
        plot(selectStrongest(SURF, 10)); 
    end
end

