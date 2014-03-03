%% Problem 5: Bootstrap av skattning av skillnad mellan
%väntevärden för födelsevikter.
load('birth.dat');
x = birth(birth(:, 20) < 3, 3);
y = birth(birth(:, 20) == 3, 3);

diffmean = mean(x) - mean(y);
fprintf('mean(x) = %d\n', mean(x));
fprintf('mean(y) = %d\n', mean(y));
fprintf('mean(x) - mean(y) = %d\n', diffmean);

[mu, sigma] = normfit(x);
range = 1000:6000;

M = 1000;
boot1 = bootstrp(M, @mean, x);
boot2 = bootstrp(M, @mean, y);
thetaboot = boot1 - boot2;

% Skatta täthetsfunktionerna.
[fi, xi] = ksdensity(thetaboot);
[fi1, x1] = ksdensity(boot1);
[fi2, x2] = ksdensity(boot2);

q = quantile(thetaboot, [0.025, 0.975]);

s1 = std(x);
s2 = std(y);
d = sqrt((s1^2+s2^2)/M);

% Använder följdsats 12.4.2 på s. 306.
I = [mean(x) - mean(y) - 1.96*d, mean(x) - mean(y) + 1.96*d];
fprintf('Konfidensinterval enligt quatile-funktion: [%d, %d]\n', q(1), q(2));
fprintf('Konfidensinterval enligt funktion på sida 306: [%d, %d]\n', I(1), I(2));
fprintf('Längden av quantile-funktionens konf. intervall: %d\n', abs(q(1) - q(2)));
fprintf('Längden av bokens funktionens konf. intervall: %d\n', abs(I(1) - I(2)));


subplot(121); plot(x1, fi1, 'b', x2, fi2, 'r');
leg = legend('Non-smokers.', 'Smokers.');
xlabel('Weight at birth.')
ylabel('Probability.')
set(leg,'Location','NorthWest');

subplot(122); plot(xi, fi, q(1), 0, 'r*', q(2), 0, 'r*', I(1), 0, 'g*', I(2), 0, 'g*', mean(thetaboot), 0, 'y+');
legend('Difference between non-smokers and smokers.');
% Ser väldigt normalfördelat ut.
% hold on;
% subplot(121); plot(xi, fi, mean(thetaboot), 0, 'r*', q(1), 0, '+g', q(2), 0, '+g', I(1), 0, '+y', I(2), 0, '+y'); 
% subplot(122); normplot(thetaboot); 
% hold off;
