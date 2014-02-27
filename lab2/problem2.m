%% Problem 2: Konfidensintervall
load wave_data.mat
subplot(211), plot(y(1:100))
subplot(212), hist_density(y)
% my_est = sqrt(1/(2*length(y))*sum(y.^2)) % ML
my_est = mean(y)/sqrt(pi/2) % MK
% lower_bound = my_est - 

hold on;
range = 0:0.1:10;
subplot(212), plot(range, raylpdf(range, my_est), 'r');
hold off;
