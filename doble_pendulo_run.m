[t,y] = ode45(@doble_pendulo,[0 100], [0 35 0 0]);

%Aqui se crea la figura donde se va a graficar el "y" con respecto a "t", "x" y "t" son 
%parametros que retorna la funcion 'ode45'

figure(1)
plot(t,y(:,1));
grid on
hold on
title("Posicion");
xlabel("Tiempo");
ylabel("Radianes");

figure(2)
plot(t,y(:,2));
grid on
title("Velocidad");
xlabel("Tiempo");
ylabel("Radianes");