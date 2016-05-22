clear all; close all; 
% test data - for hmms, must use integer values
x_line = 1:1:100; y_line = 1:1:100;
x_sine = 1:1:100; y_sine = round(linspace(40,60,100));                  % accuracy ~ 70
%x_sine = 50+round(40*cos(x_line)); y_sine = 50+round(40*sin(x_line));  % accuracy ~ 100
% plot(x_line,y_line);
% hold on
% plot(x_sine,y_sine);

%% 2 dimensional emissions (tuple case) - performs very poorly
% Train set with seq and states to find transition and emission matrices
seq = [x_line, x_sine, x_line, x_sine, x_line, x_sine, x_line;
        y_line, y_sine, y_line, y_sine, y_line, y_sine, y_line];
% line is state 1 and sine state 2
% states is 1xn vector with state for each seq entry
states = [1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2))];
[trans_est,emis_est] = hmmestimate(seq,states);         % estimate transition and emission matrices
likelystates = hmmviterbi(seq, trans_est, emis_est);    % guess states from transition and emission matrices
sum(states==likelystates)/size(states,2);               % accuracy of guessed states should ~ 1

% test transition and emission matrices with flipped, shorter sequence 
seq = [x_sine, x_line;
        y_sine, y_line];
states = [2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2))];
likelystates = hmmviterbi(seq, trans_est, emis_est);
tuple_acc = sum(states==likelystates)/size(states,2)

%% independent hmm for each dimension - most likely choice, unless other multivariable hmm method found
seq = [x_line, x_sine, x_line, x_sine, x_line, x_sine, x_line;
        y_line, y_sine, y_line, y_sine, y_line, y_sine, y_line];
states = [1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2)), 2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2))];
[trans_estx,emis_estx] = hmmestimate(seq(1,:),states);
[trans_esty,emis_esty] = hmmestimate(seq(2,:),states);
likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
x_acc = sum(states==likelystates_x)/size(states,2);
y_acc = sum(states==likelystates_y)/size(states,2);
mean([x_acc,y_acc]);

seq = [x_sine, x_line;
        y_sine, y_line];
states = [2*ones(1,size(x_sine,2)), 1*ones(1,size(x_line,2))];
likelystates_x = hmmviterbi(seq(1,:), trans_estx, emis_estx);
likelystates_y = hmmviterbi(seq(2,:), trans_esty, emis_esty);
x_acc = sum(states==likelystates_x)/size(states,2);
y_acc = sum(states==likelystates_y)/size(states,2);
ind_acc = mean([x_acc,y_acc])                  

