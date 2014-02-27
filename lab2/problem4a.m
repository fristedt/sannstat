%% Problem 4a: Linjär regression.
load moore.mat;
% x = 1970 + (1:length(y))
% plot(x, y);

w = log(y);
x = 1971:2010;
x = x';
X = [x ones(length(x), 1)];
% X = X';
% size(X)
[beta, betaint, res] = regress(w, X);
w = beta(1)*x + beta(2);
subplot(121), plot(x(1:10), y(1:10), '*');
subplot(122), plot(x, w, x, res, 'r');
trans2020 = beta(1)*2020 + beta(2)
