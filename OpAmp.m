function dx=OpAmp(t,x)

%------------Definicion de los parametros------------%
R1 = 1e3;
R2 = R1;
R3 = 10e3;
R4 = 15e3;
C1 = 0.1e-6;
C2 = C1;
b = (R3+R4)/R3;
Vin = 1;

dx = zeros(2,1);

%--------Definición de la dinámica del sistema--------%
dx(1) = x(2);
dx(2) = (Vin/(R1*R2*C1*C2))+((Vin*R4)/(R1*R2*R3*C1*C2))-(x(2)/(R1*C1))-(x(2)/(R2*C2))+((R3+R4)*x(2)/(R2*R3*C2))-(x(2)/(R1*C2))-(x(1)/(R1*R2*C1*C2));