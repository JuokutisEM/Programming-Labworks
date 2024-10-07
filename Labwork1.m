
A = [2 9 0 0; 0 4 1 4; 7 5 5 1; 7 8 7 4];

b = [-1; 6; 0; 9];

a = [3 -2 4 -5];

h1 = a';
h2 = b';

x1 = A*b;

x2 = a+4;

x3 = b*a;

x4 = a.*h2;

x5 = A.*h1;

Test1 = A*A;
Test2 = A^2;
Test3 = A.^2;

% When we do .^2 it means that each element gets raised by the power of 2
% In the other 2 cases (Test1 and Test2) A matrix is multiplied by the
% other matrix. In this case being A multiplied by A.

%A*x = b
x = b'/A
x*A

B = A(2:3, :);
% the command that isolates the submatrix that consists of the 2nd to 
% 3rd rows of the matrix A