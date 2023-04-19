clc; clear all;

%Ball thrown up with an angle

t=0:0.03:30; %time of simulation
u=20; %initial velocity
g=9.8; %gravitational force

%hitting angle1
angle1 = 30;
theta1=angle1*pi/180; %angle in radians

ux1=u*cos(theta1); %horizontal velocity 
uy1=u*sin(theta1);
x1=ux1*t; %horizontal displacement, no gravitational resistance
y1=uy1*t-0.5*g*t.^2; %vertical displacement
vel1 = uy1-g*t;

%----------------------------------------------
%hitting angle2
angle2 = 45;
theta2=angle2*pi/180; %angle in radians

ux2=u*cos(theta2); %horizontal velocity 
uy2=u*sin(theta2);
x2=ux2*t; %horizontal displacement, no gravitational resistance
y2=uy2*t-0.5*g*t.^2; %vertical displacement
vel2 = uy2-g*t;

%hitting angle3
angle3 = 55;
theta3=angle3*pi/180; %angle in radians

ux3=u*cos(theta3); %horizontal velocity 
uy3=u*sin(theta3);
x3=ux3*t; %horizontal displacement, no gravitational resistance
y3=uy3*t-0.5*g*t.^2; %vertical displacement
vel3 = uy3-g*t;

%hitting angle4
angle4 = 90; % equivalent to ball thrown vertically upwards
theta4=angle4*pi/180; %angle in radians

ux4=u*cos(theta4); %horizontal velocity 
uy4=u*sin(theta4);
x4=ux4*t; %horizontal displacement, no gravitational resistance
y4=uy4*t-0.5*g*t.^2; %vertical displacement
vel4 = uy4-g*t;

%------------Plotting the graphs---------------------
ground_cross1 = find(y1<=0);
ground1 = ground_cross1(2);
ground_cross2 = find(y2<=0);
ground2 = ground_cross2(2);
ground_cross3 = find(y3<=0);
ground3 = ground_cross3(2);
ground_cross4 = find(y4<=0);
ground4 = ground_cross4(2);

txt1 = sprintf('Hit angle = %.2fdeg, time = %.2fs',angle1,t(ground1));
txt2 = sprintf('Hit angle = %.2fdeg, time = %.2fs',angle2,t(ground2));
txt3 = sprintf('Hit angle = %.2fdeg, time = %.2fs',angle3,t(ground3));
txt4 = sprintf('Hit angle = %.2fdeg, time = %.2fs',angle4,t(ground4));
for i1=1:size(t,2)
    if(i1>1 && y3(i1)<=0) 
        break; %to avoid ball going below horizontal reference
    end
    plot(x1(i1),y1(i1),'r*')
    hold on;
    plot(x2(i1),y2(i1),'b*')
    hold on;
    plot(x3(i1),y3(i1),'m*')
    hold on;
    plot(x4(i1),y4(i1),'g*')
    hold on;
    xlabel('Horizontal displacement')
    ylabel('Vertical displacement')
    legend(txt1,txt2,txt3,txt4);
    axis([0 41 0 21]) %to see the entire animation in still axis
    title('Ball hit with various angles')
    pause(0.04); %to wait between two runs
end

