%% Problem 3.
load resistorer.mat;
hold on;
subplot(121); hist_density(y);
subplot(122); normplot(y)
hold off;

% y appears to be normally distributed. However, there is a
% spike on the right.
