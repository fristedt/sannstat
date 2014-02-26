% P(Xk ≤ 10)
fprintf('P(X₁ ≤ 10) = %d\n', binocdf(10, 100, 0.3))
fprintf('P(X₂ ≤ 10) = %d\n', normcdf(10, 100, 0.3))
fprintf('P(X₃ ≤ 10) = %d\n', expcdf(10, 0.9))

% P(Xk > 15) = 1 - P(Xk ≤ 15)
fprintf('1 - P(X₁ ≤ 15) = %d\n', 1 - binocdf(15, 100, 0.3))
fprintf('1 - P(X₂ ≤ 15) = %d\n', 1 - normcdf(15, 100, 0.3))
fprintf('1 - P(X₃ ≤ 15) = %d\n', 1 - expcdf(15, 0.9))

% P(7 ≤ Xk ≤ 15) = P(Xk ≤ 15) - P(Xk ≤ 7)
fprintf('P(7 ≤ X₁ ≤ 15) = %d\n', binocdf(15, 100, 0.3) - binocdf(7, 100, 0.3))
fprintf('P(7 ≤ X₂ ≤ 15) = %d\n', normcdf(15, 100, 0.3) - normcdf(7, 100, 0.3))
fprintf('P(7 ≤ X₃ ≤ 15) = %d\n', expcdf(15, 0.9) - expcdf(7, 0.9))
