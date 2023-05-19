blueDice = [1 2 3 4 5 6];
yellowDice = [1 1 1 3 3 3 4 8];
redDice = [2 2 2 2 2 3 3 4 4 6];
N = 1000;

for i = 1:N

    first = [
        blueDice(randi(length(blueDice))) 
        
        yellowDice(randi(length(yellowDice)))
        
        redDice(randi(length(redDice)))
    ];
    firstTotal(i) = sum(first);

    second = blueDice(randperm(length(blueDice), 3));
    
    secondTotal(i) = sum(second);
    
end

greater = sum(secondTotal > firstTotal) / N * 100;

firstAverage = mean(firstTotal);

secondAverage = mean(secondTotal);


disp(['Average total value for first choice: ' num2str(firstAverage)])

disp(['Average total value for second choice: ' num2str(secondAverage)])

disp(['Percentage of cases where second choice is better than first choice:' 
num2str(greater) '%'])
