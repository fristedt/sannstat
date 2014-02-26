%% Problem 2: Multivariant normal
mux = 0; muy = 100; sigmax = 1; sigmay = 4; rho = -0.8;
plot_mvnpdf(mux, muy, sigmax, sigmay, rho);

% mux = 0; muy = 100; sigmax = 1; sigmay = 4; rho = 0.9;
% subplot(1, 2, 2);
% plot_mvnpdf(mux, muy, sigmax, sigmay, rho);

% Programmet plottar ut täthetsfunktionen för s.v. X och Y. X och Y har en
% tvådimensionell normalfördelning. Variablerna mux och muy är x resp. y
% väntevärden. Variablerna sigmax och sigmay är x resp. y standardavvikelse.
% Variabeln rho är korrelationskoefficienten mellan X och Y.

% Väntevärdena mux och muy bestämmer mittpunkten för plotten. 
% Standardavvikelserna sigmax och sigmay bestämmer hur stor plotten
% blir i x och y dimensionerna. 

% Rho vet ej.
