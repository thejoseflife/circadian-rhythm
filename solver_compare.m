% solve odes

% y0 = zeros(8,1); % initial conditions
% y0(7)=10^(-5); %easy to change variables in this way,"Kd"
% y0(8)=0.0659; %"A"
% 
% % transient
% [T,Y] = ode45(@rhs,[0,72],y0);
% 
% % solve odes
% [T,Y] = ode45(@rhs,[0,72],Y(end,:));
% 
% figure(1);
% y1 = Y(:,1);
% y2 = Y(:,2);
% y3 = Y(:,3);
% y4 = Y(:,4);
% y5 = Y(:,5);
% y6 = Y(:,6);
% plot(T,y1,T,y2,T,y3,T,y4,T,y5,T,y6,'LineWidth',2); %repressor as time
% legend("y_1","y_2","y_3","y_4","y_5","repressors");
% xlabel('hours') 
% ylabel('concentration') 
% ylim([0 2]);

% % solve odes
% 
% % transient
% y0 = ones(8,1); % initial conditions
% [T,Y] = ode45(@rhs,[0,500],y0);
% 
% % solutions to plot
% [T,Y] = ode45(@rhs,[0,72],Y(end,:));
% 
% figure(1);
% plot(T,Y(:,1),'LineWidth',2)
% ylim([0 2]);

% transient
y0 = ones(9,1); % initial conditions
[T,Y] = ode45(@rhs_ft,[0,500],y0);

% solutions to plot
[T,Y] = ode45(@rhs_ft,[0,72],Y(end,:));

figure(1);
plot(T,Y(:,1),'LineWidth',2)
ylim([0 2]);

% %change the translation of the light function
% y0(9)=30; %the translation of the ft function
% 
% 
% [T,Y] = ode45(@rhs_ft,[0,500],y0);
% 
% % solutions to plot
% [T,Y] = ode45(@rhs_ft,[0,72],Y(end,:));
% 
% figure(2);
% y1 = Y(:,1);
% plot(T,y1); 
% hold on;
% light=ft(T,y0(9));
% plot(T,light);
% legend("y_1","light");
% xlabel('hours');





