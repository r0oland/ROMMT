%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Johannes Rebling, 26/1/2014, johannesrebling@gmail.com
% playing around trying to figure out how the 
% Delay-And-Sum (DAS) algorithm works
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Far Field Case

%constants
x0 = ones(4,1)*[5000,5000]; %source location
xm = [2,2; 2,-2; -2,-2; -2,2]; % detector locations
c = 0.5*sqrt(2); %speed of sound

e0 = -x0/norm(x0(1,:)); %norm. direction vector of source
em0 = (xm - x0)/norm(xm(1,:) - x0(1,:)); % norma. direction vector for detectors
% since sources are far away em0 approx equal to e0 (far field case)
a0 = e0/c; %slowness vector, results in delay time if multiplied by x-vector
dot(a0,xm,2) %time delay for each sensor relative to [0,0]
