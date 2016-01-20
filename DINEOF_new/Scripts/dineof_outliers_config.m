%info needed to calculate outliers

%weigh to give to each of the outliers tests:
%scaled difference between initial and reconstructed images
C1=1/3;

%Proximity to clouds
C2=1/3;

%Difference respect to local median
C3=1/3;
%size of local box to compute median
mbox=20;


%level of confidence to classify a pixel as an outlier 
%unbounded, to be determined by user
% the higher the stricter the outlier detection
level=3.5;