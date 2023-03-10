% solve odes

y0 = zeros(8,1); % initial conditions
y0(7)=10^(-5); %easy to change variables in this way,"Kd"
y0(8)=0.0659; %"A"

[T,Y] = ode45(@(t,y) rhs(t,y,0.5),[0,72],y0);

figure(1);
y1 = Y(:,1);
y2 = Y(:,2);
y3 = Y(:,3);
y4 = Y(:,4);
y5 = Y(:,5);
y6 = Y(:,6);
plot(T,y1,T,y2,T,y3,T,y4,T,y5,T,y6); %repressor as time
legend("y_1","y_2","y_3","y_4","y_5","repressors");
xlabel('hours') 
ylabel('concentration') 

% solve odes

y0 = zeros(8,1); % initial conditions
y0(8)=0.0659;
Alist=[10^(-5),10^(-4),10^(-3),10^(-2),10^(-1)];
figure(2);
for A = Alist
    y0(7)=A;
    [T,Y] = ode45(@(t,y) rhs(t,y,0.5),[0,72],y0);
    y1 = Y(:,1);
    plot(T,y1);
    hold on;
end
xlabel('hours') 
ylabel('concentration of y_1 (A)') 
legend("10^{-5}","10^{-4}","10^{-3}","10^{-2}","10^{-1}");

figure(3);
y0 = zeros(9,1); % initial conditions
y0(7)=10^(-5); %easy to change variables in this way,"Kd"
y0(8)=0.0659; %"A"
y0(9)=10; %the translation of the ft function

[T,Y] = ode45(@rhs_ft,[0,72],y0);

figure(3);
y1 = Y(:,1);
plot(T,y1); 
hold on;
light=ft(T,y0(9));
plot(T,light);
legend("y_1","light");
xlabel('hours');

%change the translation of the light function
y0(9)=30; %the translation of the ft function
[T,Y] = ode45(@rhs_ft,[0,72],y0);
figure(4);
y1 = Y(:,1);
plot(T,y1); 
hold on;
light=ft(T,y0(9));
plot(T,light);
legend("y_1","light");
xlabel('hours');


figure(5);
plot3(Y(:,1), Y(:,2), Y(:,3));

y0 = ones(8,1); % initial conditions
[T,Y] = ode45(@(t,y) rhs(t,y,0.5),[0,70],y0);

figure(6);
plot(T,Y(:,1))



