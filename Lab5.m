%Task 1 
clc

signal_data = struct;

signal_data.title = 'Signal Wave';

signal_data.x_values = 0:0.1:10;

signal_data.signal_values = sin(2*pi*signal_data.x_values);

disp(signal_data);

plot(signal_data.x_values, signal_data.signal_values, 'Red');

title(signal_data.title);
xlabel('Why');
ylabel('Yes');

grid on;

%Task 2

while true

    m = input('m: ');
    n = input('n: ');

    if m == n
        disp('Task Done');
        break;
    end

    while true
        if m > n
            m = m - n;
        else
            n = n - m;
        end
   
        disp(['Current m: ', num2str(m), ', Current n: ', num2str(n)]);
        
        if m <= 0 || n <= 0
            disp('Negative...Blue screen of doom, need to restart');
            break;
        end
    end
end

%Task 3


while true 

Rand1 = round(rand * 3);
disp([num2str(random_integer_3)]);

Rand2 = round(rand * 5);
disp([num2str(random_integer_5)]);


if Rand1 == Rand2
    disp('Random numbers are equal')
    break;
end  

if Rand1 > Rand2
    disp('')
    break;
end
if Rand1 < Rand2
    disp('')
    break;
end
end 

RandArray1 = zeros(1, 10); 
RandArray2 = zeros(1, 10); 

for i = 1:10
    RandArray1(i) = round(rand * 3);
    RandArray2(i) = round(rand * 5);
end

disp('Array1:');
disp(RandArray1);
disp('Array2:');
disp(RandArray2);

plot(RandArray1, 'Red')
hold on 
plot(RandArray2, 'Blue')
hold off