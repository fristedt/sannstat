%% Problem 3: Simulering av slumptal
mu = 10;
N = 1e4;
y = exprnd(mu, N, 1); % Genererar N expslumptal
hist_density(y); % Skapar ett normaliserat histogram
t = linspace(0, 100, N/10); % Vektor med N/10 punkter
hold on
plot(t, exppdf(t, mu), 'r') % 'r' betyder rod linje
hold off

% Histogrammet följer i regel den röda linjen. Avvikelserna kommer
% ifrån faktumet att exprnd tar slumptal från en exp-fördelning.
