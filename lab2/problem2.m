%% Problem 2: Konfidensintervall
load wave_data.mat
subplot(211), plot(y(1:100))
subplot(212), hist_density(y)
% my_est = sqrt(1/(2*length(y))*sum(y.^2)) % ML
my_est = mean(y)/sqrt(pi/2) % MK
% 95%
n = length(y);
s = sqrt(sum((y - mean(y)).^2)/(n-1));
d = s/sqrt(n);
lower_bound = my_est - 1.96*d
upper_bound = my_est + 1.96*d

hold on;
range = 0:0.1:10;
plot(lower_bound, 0, 'g*');
plot(upper_bound, 0, 'b*');
plot(range, raylpdf(range, my_est), 'r');
hold off;
