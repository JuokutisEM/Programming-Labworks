%Task 1
%Part A

f = @(x, y) sin((abs(x + y)) / 20) * exp(-abs(x+y));

[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = f(x, y);

plot = uisetcolor([0 0 1], 'Over the Rainbow');
shade = uisetcolor([1 0 0], 'Over the Rainbow');

figure;

s = surf(x, y, z);
set(s, 'FaceColor','interp', 'EdgeColor', 'none' , 'FaceLighting', 'gouraud');
s.CData = repmat(reshape(shade, 1, 1, 3), size(z));

view(30, 30);

shading faceted;  

xlabel('x');
ylabel('y');
zlabel('z');
title('Colourful Waves');

colorbar;

%Part 2 

f1 = @(x, y) 1 - 2 * x.^2 - 3 * y.^2;

p = linspace(0, 2*pi, 100);
r = linspace(0, 1, 100);

[p, r] = meshgrid(p, r);

x = r .* cos(p);
y = r .* sin(p);

z = f1(x, y);

plot1 = uisetcolor([0 0 1], 'Over the Rainbow and More');
shade1 = uisetcolor([1 0 0], 'Over the Rainbow and More');

figure;

h = surf(x, y, z);
set(h, 'FaceColor','interp', 'EdgeColor', 'none' , 'FaceLighting', 'gouraud');
h.CData = repmat(reshape(shade1, 1, 1, 3), size(z));

view(90, 90);

shading faceted;

xlabel('x');
ylabel('y');
zlabel('z');
title('Black Hole');

colorbar;

%Task 3

Z1 = @(x, y) 1 - (x.^2 + y.^2);

[x, y] = meshgrid(-1:0.05:1, -1:0.05:1);

z = Z1(x, y);

figure;
M = surf(x, y, z);
set(M,'FaceColor', 'red', 'EdgeColor', 'none');

camlight left;

xlabel('x');
ylabel('y');
zlabel('z');
title('Parachute');