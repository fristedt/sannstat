%% Problem 4b: Polynomregression
load poly.mat;
X1 = [ones(length(x1), 1) x1 x1.^2 x1.^3];
beta = regress(y1, X1);
y1Approx = X1 * beta;
subplot(331); plot(x1, y1, x1, y1Approx, 'r');

X2 = [ones(length(x2), 1) x2 x2.^2];
beta = regress(y2, X2);
y2Approx = X2 * beta;
subplot(332); plot(x2, y2, x2, y2Approx, 'r');

X3 = [ones(length(x3), 1) x3 x3.^2 x3.^3];
beta = regress(y3, X3);
y3Approx = X3 * beta;
subplot(333); plot(x3, y3, x3, y3Approx, 'r');

res = y1Approx - y1;
subplot(334), normplot(res);
subplot(337), hist(res);

res = y2Approx - y2;
subplot(335), normplot(res);
subplot(338), hist(res);

res = y3Approx - y3;
subplot(336), normplot(res);
subplot(339), hist(res);
