xrange = -10:0.01:10;

subplot('221');
plot(xrange, normpdf(xrange));

subplot('222');
xrange = -100:0.01:100;
plot(xrange, normpdf(xrange, -1, 10));

subplot('223');
xrange = 99.9:0.00001:100.1;
plot(xrange, normpdf(xrange, 100, 0.01));
