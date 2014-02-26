%% Monte Carlo
N = 1e5;
% U = rand(N, 1)*2*pi
% mean(sin(U).^2)

X = exprnd(4, N, 1);
Y = normrnd(0, 1, N, 1);
Z = exp(X).^(cos(Y));
plot(Z)
median(Z)
