obj=VideoReader('C:\Users\Kyle\Documents\Raven\JIGSAW\Knot_Tying_D005_capture1.avi');
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
for k=1:200
    I=read(obj,k);
    figure(1),imshow(I,[]);
    if mod(k,5) == 0
        hold on;
        I = rgb2gray(I);
        corners = detectHarrisFeatures(I);
        plot(corners.selectStrongest(50));
    end
end