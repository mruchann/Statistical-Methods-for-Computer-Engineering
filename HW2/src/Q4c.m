mu = 175;
sigma = 7;
N = 1000;

p45 = zeros(1, N);
p50 = zeros(1, N);
p55 = zeros(1, N);

for i = 1:N
    heights = normrnd(mu, sigma, 1, 150);
    
    heightsBetween = sum(heights >= 170 & heights <= 180);
    
    percentBetween = heightsBetween / 150;
    
    p45(i) = percentBetween >= 0.45;
    p50(i) = percentBetween >= 0.50;
    p55(i) = percentBetween >= 0.55;
end

p45Result = sum(p45) / N;
p50Result = sum(p50) / N;
p55Result = sum(p55) / N;

fprintf('At least 45%% of adults have heights between 170 cm and 180 cm with the probability %.4f\n', p45Result);
fprintf('At least 50%% of adults have heights between 170 cm and 180 cm with the probability %.4f\n', p50Result);
fprintf('At least 55%% of adults have heights between 170 cm and 180 cm with the probability %.4f\n', p55Result);
