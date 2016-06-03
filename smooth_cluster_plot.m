clear all; close all;
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D001_capture1.avi');
[clust1norm,clust1smooth,clust1ave] = getCornersPlotData(obj,0.3,870);

min = 400;
max = 550;
t = 1:size(clust1norm(min:max),2);
figure;
plot(t,[clust1norm(min:max,1),clust1smooth(min:max,1),clust1ave(min:max,1)])
legend('normal', 'smooth', 'average','location', 'southeast');

%%
subplot(3,1,1)
hold on
plot(t,clust1norm(min:max,1),'k');
title('Cluster position tracking: Raw');
ylabel('x position');

subplot(3,1,2)
hold on
plot(t,clust1smooth(min:max,1),'b');
title('Cluster position tracking: Running Average');
ylabel('x position');

subplot(3,1,3)
hold on
plot(t,clust1ave(min:max,1),'g');
title('Cluster position tracking: Averaging Filter');
ylabel('x position');
xlabel('frame');
axis([0 160 340 420])

