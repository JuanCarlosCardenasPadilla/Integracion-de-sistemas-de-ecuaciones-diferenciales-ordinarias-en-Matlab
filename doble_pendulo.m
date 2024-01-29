function x = doble_pendulo(t,y)

%-------------------- Definicion de parametros -------------------%

m1 = 0.2;
l1 = 0.3;
m2 = 0.1;
l2 = 0.25;
g = 9.81;
c = 0.2;

x = zeros(4,1);

%----------------Definicion de la dinamica del sistema------------%

x(1) = y(2);
x(2) = (1/(m1+m2))*l1*(-m2*l2*(x(4)*cos(y(3)-y(1))-x(4)^2*sin(y(3)-y(1))-(m1+m2)*g*sin(y(1))+c*y(2)));
x(3) = y(4);
x(4) = (1/l2)*(-l1*(y(2)*cos(y(3)-y(1))+y(2)^2*sin(y(3)-y(1))+g*sin(y(3))));