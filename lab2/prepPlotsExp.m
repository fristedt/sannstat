xrange = 0:0.01:20;
subplot('221');
plot(xrange, exppdf(xrange, 1));
subplot('222');
plot(xrange, exppdf(xrange, 2));
subplot('223');
plot(xrange, exppdf(xrange, 10));
