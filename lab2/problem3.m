%% Problem 3.
load resistorer.mat;
hold on;
hist_density(y);
normplot(y)
hold off;

% y appears to be normally distributed. However, there is a
% spike on the right.
