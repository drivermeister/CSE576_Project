obj=VideoReader('C:\Users\Jason\Documents\MATLAB\Needle_Passing_B001_capture1.avi');
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

% downsample corner detection
I=read(obj,1);
%%imageFeaturesPrev = imageFeatures;
for k=2:200
    I=read(obj,k);
    figure(1),imshow(I,[]);
    if mod(k,5) == 0
        hold on;
        I = rgb2gray(I);
        %%%corners = detectHarrisFeatures(I);
        SURF = detectSURFFeatures(I);
        %%plot(corners.selectStrongest(50));
        %%[imageFeatures, SURF] = extractFeatures(I, SURF);
        %%imagePairs = matchFeatures(imageFeatures, imageFeaturesPrev);
        %%imageFeaturesPrev = imageFeatures;
        plot(selectStrongest(SURF, 50)); 
    end
end

