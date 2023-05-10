R1 = 1e3;
R2 = R1;
R3 = 10e3;
R4 = 15e3;
C1 = 0.1e-6;
C2 = C1;
b = (R3+R4)/R3;
Vin = 1;

G=tf(b/(R1*R2*C1*C2), [1 (1/(R1*C1)+((1-b)/(R2*C2))+1/(R2*C1)) 1/(R1*R2*C1*C2)]);

open('OpAmp_SyS.slx')