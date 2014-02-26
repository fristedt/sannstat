%% Problem 1: exp-pdf
dx = 0.1;
x = 0:dx:15;
mu = 1;
y = exppdf(x, mu);
subplot(1, 2, 1);
plot(x, y);

%% Problem 1: lambda-plot
lambda = 0.4267;
f = (lambda*exp(-x/lambda)+lambda./x).*(x >= 1 & x <= 10);
subplot(1, 2, 2);
plot(x, f);

% Exponentialfördelningen har täthetsfunktionen λe^(-λx). 
% λ-fördelningen har inverterat λ i exponenten och adderat λ/x till
% täthetsfunktionen. Alltså är λ-fördelningen ungefär exponentialfördelad, med
% en viss förskjutning λ/x. Alltså är λ-fördelningen ungefär
% exponentialfördelad.
