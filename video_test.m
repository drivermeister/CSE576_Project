obj=VideoReader('C:\Users\Kyle\Documents\Raven\JIGSAW\Knot_Tying_D005_capture1.avi');
nFrames=obj.NumberOfFrames;
for k=1:nFrames
    img=read(obj,k);
    figure(1),imshow(img,[]);
end