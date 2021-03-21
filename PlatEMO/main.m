clear; clc; close all;

runs = 10;

theta = linspace(0.1,1000,runs);
N = 91;
objval = zeros(N*size(theta,2),3);
for iterations=1:size(theta,2)
    [~,objval(N*(iterations-1)+1:N*iterations,:),~] = platemo('algorithm',{@SMSEMOA,1,theta(iterations)},'problem',@DBMOPPa,'M',3,'D',3,'N',N);
end

% Generating a true PF estimate - Since the true PF is not given ; using Non dominated sorting
[FrontNo,~] = NDSort(objval,10);
temp_indices = find(FrontNo==1);
pf = zeros(size(temp_indices,2),3);
for j = 1:size(temp_indices,2)
    pf(j,:) = objval(temp_indices(j),:);
end

% Calculating HyperVolume
HVS = zeros(size(theta,2),1);
for iterations = 1:size(theta,3)
    HVS(iterations) = HV(objval(N*(iterations-1)+1:N*iterations,:),pf);
end

problem1 = platemo('algorithm',{@SMSEMOA,1,theta(iterations)},'problem',@DBMOPPa,'M',3,'D',3,'N',N);
problem2 = platemo('algorithm',{@SMSEMOA,1,theta(iterations)},'problem',@DBMOPPa,'M',3,'D',3,'N',N, 'maxFE',20000);

indicator1 = HV(problem1,pf)
indicator2 = HV(problem2,pf)