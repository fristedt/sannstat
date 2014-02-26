xrange = 0:0.01:20;
subplot('121');
plot(xrange, gampdf(xrange, 1, 2))

subplot('122');
plot(xrange, gampdf(xrange, 5, 1))
