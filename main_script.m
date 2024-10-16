global x y;

x = 0:0.1:20;

calculate_y;
calculate_y_half;

figure;
plot(x, y, 'b-.o');
title('Plot of y = (x^2) * 1/2');
xlabel('x');
ylabel('y');
grid on;

whos -global;
clc