yk = 0.1:0.01:5;
w = log(yk');
xk = yk';
X = [ones(length(xk), 1) xk];

[beta, betaint, res] = regress(w, X);
w = beta(1) + beta(2)*xk;

plot(yk, log(yk), xk, w, xk, res, 'r');
