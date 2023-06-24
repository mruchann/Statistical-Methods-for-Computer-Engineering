alpha = 0.02;
epsilon = 0.03;
z = -norminv(alpha/2);
N = ceil(0.25 * (z / epsilon)^2); % 1504
TotalWeights = zeros(N, 1);

for k = 1 : N;
    totalWeight = 0;

    % bulk carriers -----------------------------------------------
    weight = 0;
    lambda = 50; U = rand; X = 0;

    F = exp(-lambda);
    while (U >= F);
        X = X + 1;
        F = F + exp(-lambda) * lambda^X / gamma(X + 1);
    end;

    alpha = 60; lambda = 0.1;

    for i = 1 : X;
        T = sum( -1/lambda * log(rand(alpha,1)));
        weight = weight + T;
    end;

    totalWeight = totalWeight + weight;

    % container ships -----------------------------------------------
    weight = 0;
    lambda = 40; U = rand; X = 0;

    F = exp(-lambda);
    while (U >= F);
        X = X + 1;
        F = F + exp(-lambda) * lambda^X / gamma(X + 1);
    end;

    alpha = 100; lambda = 0.05;

    for i = 1 : X;
        T = sum( -1/lambda * log(rand(alpha,1)));
        weight = weight + T;
    end;

    totalWeight = totalWeight + weight;

    % oil tankers -----------------------------------------------
    weight = 0;
    lambda = 25; U = rand; X = 0;

    F = exp(-lambda);
    while (U >= F);
        X = X + 1;
        F = F + exp(-lambda) * lambda^X / gamma(X + 1);
    end;

    alpha = 120; lambda = 0.02;

    for i = 1 : X;
        T = sum( -1/lambda * log(rand(alpha,1)));
        weight = weight + T;
    end;

    totalWeight = totalWeight + weight;

    TotalWeights(k) = totalWeight;
end;    

p = mean(TotalWeights > 300000);
E = mean(TotalWeights);
s = std(TotalWeights);

fprintf('Estimated probability = %f\n', p)
fprintf('Expected weight = %f\n', E)
fprintf('Standard deviation = %f\n', s)


