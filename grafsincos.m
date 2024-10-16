function [sin_vals, cos_vals] = grafsincos(vec)

sin_vals = sin(vec);
cos_vals = cos(vec);

if nargout == 0
  
    figure;
    plot(vec, sin_vals, 'r--o', 'DisplayName', 'sin(x)');
    hold on;
    plot(vec, cos_vals, 'b-.x', 'DisplayName', 'cos(x)');
    hold off;
    title('Sine and Cosine Values');
    xlabel('x');
    ylabel('Value');
    legend show;
    grid on;
end
end


%[sine_values, cosine_values] = grafsincos(0:0.1:2*pi) - Output
%grafsincos(0:0.1:2*pi); - Plot