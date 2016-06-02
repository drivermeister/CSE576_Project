clear all; close all;
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_B001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_C001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_D001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Knot_Tying_I001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_B001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_C001_capture1.avi');
% obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_D001_capture1.avi');
obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_F001_capture1.avi');
%obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_G001_capture1.avi');
%obj=VideoReader('C:\Users\Kyle\Documents\MATLAB\Suturing_H001_capture1.avi');

procedure = procedure_prediction(obj);
if procedure == 1
    disp('Knot Tying');
elseif procedure == 2
    disp('Suturing');
else
    disp('Unable to identify surgical procedure');
end