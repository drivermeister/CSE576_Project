function procedure = procedure_prediction(obj)
scale = 2;
clust1 = getCornersAveClust1(obj,0.3,100,400);
seq = round(clust1)'*scale;

trans_estx1 = csvread('trans_estx1.csv');
trans_esty1 = csvread('trans_esty1.csv');
emis_estx1 = csvread('emis_estx1.csv');
emis_esty1 = csvread('emis_esty1.csv');
maximum = csvread('max_seq1.csv');
temp1 = seq(1,:); % clipping
temp2 = seq(2,:);
temp1(temp1>=maximum(1))=maximum(1);
temp2(temp2>=maximum(2))=maximum(2);
seq = [temp1;temp2];
seq(seq<1)=1;

seq = seq(:,100:400);
numstates = size(seq,2);
pstatesx = hmmdecode(seq(1,:), trans_estx1, emis_estx1);
pstatesy = hmmdecode(seq(2,:), trans_esty1, emis_esty1);
xprob = sum(pstatesx,2)/numstates;
yprob = sum(pstatesy,2)/numstates;
prob = [xprob,yprob]
[max_val,procedure] = max(max(prob,[],2));
if max_val <= 0.7
    procedure = -1;
end
    
end