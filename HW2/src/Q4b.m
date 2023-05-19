mu = 175;

sigma_values = [6 7 8];

x = linspace(150,200,1000);

figure
hold on
    for i = 1:length(sigma_values)
        sigma = sigma_values(i);
        y = normpdf(x, mu, sigma);
        plot(
            x, y, 
            'LineWidth', 5, 
            'DisplayName', ['\sigma = ' num2str(sigma)]
        )
end
hold off

xlabel('Height (cm)')
ylabel('Probability')
title('Normal Distribution PDF')
legend('Location', 'east')
