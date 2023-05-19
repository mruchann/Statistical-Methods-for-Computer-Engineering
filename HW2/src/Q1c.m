x = [0,100,100,0,0];
y = [0,0,100,100,0];

x_ = [10,100];
y_ = [0,90];

hold on;

plot(x, y, '-o', 'LineWidth', 5);

plot(x_, y_, '-o', 'LineWidth', 5);

hold off;

axis equal;

title('Area of Probabilities');
xlabel('T_A');
ylabel('T_B');

grid on;
