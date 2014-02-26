%% CGS
M = 1e3;
N = 30;
mu = 4;
X = exprnd(mu, M, N);
S = cumsum(X, 2);
for k = 1:N
  hist(S(:, k), 30)
  xlabel(num2str(k))
  pause(0.1)
end

% N representerar antalet S.V. När N blir större går mot oändligheten
% blir summans fördelning mer lik en normalfördelning.

% När N = 1 så ser histogrammet ut som en exponentialfördelning.
% När vi ökar N så går blir fördelningen mer "normal".

% Ungefär vid N = 10 så ser fördelningen ut som en normalfördelning.
% Större N verkar inte förbättra resultatet.
