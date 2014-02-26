%% Bootstrap  Simulering
% lambda = 1/5;
% Väntevärdet för exponentialfördelningen.
mu = 12;
% M bildar tillsammans med n_sum produkten som ger antalet slumptal
% från exprnd. Om M blir tillräckligt stor behövs inte bootstrap.
M = 1e3;
n_sum = 5;
X = exprnd(mu, M, n_sum);
g = sum(X, 2);
subplot(211)
hist_density(g)
hold on
t = 0:0.01:mu*10;
plot(t, gampdf(t, n_sum, mu), 'r')
hold off
% B är antalet bootstrapreplikat. Vår output blir bättre då B blir
% högre.
B = 1e5; % Antal bootstrapreplikat
totalNoSamples = M*n_sum;
X = reshape(X, totalNoSamples, 1); % Gor om X till vektor
yBoot = zeros(B, 1);
for j = 1:B
  % Denna rad drar n_sum slumpmässiga tal ur X.
  sampleDraws = X(randsample(totalNoSamples, n_sum, 1));
  % Denna rad summerar talen.
  yBoot(j) = sum(sampleDraws);
end
subplot(212)
hist_density(yBoot)
hold on
plot(t, gampdf(t, n_sum, mu), 'r')
hold off
