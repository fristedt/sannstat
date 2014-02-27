%% Problem 1: Maximum likelihood/Minsta kvadrat
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
% my_est = sqrt(sum(x.^2)/(2*length(x))) % Skriv in din MLskattning har
my_est = mean(x)/sqrt(pi/2) % MK
plot(my_est, 0, 'r*')
plot(b, 0, 'ro')
plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r');
hold off
