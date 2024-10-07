%1
vector = [-pi:0.7:2*pi];
A = vector'

B = cos(A)
C = A.^B
D = C'

%2
Matrix_Xmn = [exp(5) exp(-1i/exp(1)) log(1); log(pi) -2 -sin(pi)];

Vectorln = [Matrix_Xmn(2,1)^2, Matrix_Xmn(1,3), Matrix_Xmn(2,3)^2]

Matrix = [Matrix_Xmn; Vectorln]

E = det(Matrix)

%3

syms I1 I2 I3

E1 = 60; E2 = 6; E3 = 48;
Ri1 = 1; Ri2 = 0.5; R1 = 30; R2 = 12; R3 = 16; R4 = 14; R5 = 30; R6 = 5;

R13 = (R1*R3)/(R1+R6);
R12 = (R1*R2)/(R1+R2);
R56 = (R5*R6)/(R5+R6);

eqn1 = -I1 + I2 + I3 == 0
eqn2 = -R1*I2 + I3*(R13 + R4 + R12 + R2 + R3) == -E3 + E2
eqn3 = I1*(Ri1 + R1 + R56) + R2*I2 == -E1 + E2

[A,B] = equationsToMatrix([eqn1,eqn2,eqn3],[I1,I2,I3])
sol = solve([eqn1,eqn2,eqn3],[I1,I2,I3]);
X = linsolve(A,B)

%4

A = input('Enter Vector Elements', 's')
B = repelem(A, 4)

