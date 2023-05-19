mu = 175;
sigma = 7;
N = 1000;

heights = normrnd(mu, sigma, N, 1);

hist(heights,47)
xlabel('Height (cm)')
ylabel('Occurences')
title('Heights')
