x = [0,100,100,0,0];
y = [0,0,100,100,0];

x_above = [0,80];
y_above = [20,100];

x_below = [20,100];
y_below = [0,80];

hold on;

plot(x, y, '-o', 'LineWidth', 5);
plot(x_above, y_above, '-o', 'LineWidth', 5);
plot(x_below, y_below, '-o', 'LineWidth', 5);

hold off;

axis equal;

title('Area of Probabilities');
xlabel('T_A');
ylabel('T_B');

grid on;
