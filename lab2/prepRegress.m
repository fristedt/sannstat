yk = 0.1:0.01:5;
yk = yk;

w = log(yk');
size(w)

xk = yk;
X = [xk; ones(1, length(xk))];
X = X';
size(X)

[beta, betaint, res] = regress(w, X);
w = beta(1)*xk + beta(2);

plot(yk, log(yk), xk, w, xk, res, 'r');
