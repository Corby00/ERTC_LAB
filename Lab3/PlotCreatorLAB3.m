% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 4
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for plotting the acquired data on LAB3
%--------------------------------------------------------------------------

%% TODOOOOOO:
%
%	It is required to implement a way such that all steps are at time 1s,
%	and all the plots end at time 10s.
%   It must be chosen what to show and what plots compare.
%
%% PART 1: PLOT OF ALL RAW DATA

close all;
clear all;
clc;

load("LABdata\ENCODERtest.mat"); % IT IS NOT POSSIBLE TO SEE ANYTHING. USELESS. TO AVOID

ENCODERtest = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};

f0 = figure(1000);
f0.Name= 'ENCODERtest';

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

%---------------------------------------------------------------------------

load("LABdata\MOTORtest.mat"); % IT IS NOT POSSIBLE TO SEE ANYTHING. USELESS. TO AVOID
MOTORtest = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f1 = figure(1);
f1.Name= "MOTORtest";

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

%---------------------------------------------------------------------------

load("LABdata\MOTORtest2.mat"); % IT IS NOT POSSIBLE TO SEE ANYTHING. USELESS. TO AVOID
MOTORtest2 = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f2 = figure(2);
f2.Name= "MOTORtest2";

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;


%---------------------------------------------------------------------------

load("LABdata\MOTORtest3.mat"); % SHOW FORWARD-BRAKE: We have a stop at 4 [rad/s]. AVOID IF POSSIBLE
MOTORtest3 = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f3 = figure(3);
f3.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

%---------------------------------------------------------------------------

load("LABdata\MOTORtest4.mat"); % SHOW FORWARD-BRAKE: WELL DONE, AND STEP AT LESS THEN 1s.
MOTORtest4 = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f4 = figure(4);
f4.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 4: Forward-Brake:\n")
stepinfo(motor1Speed, time, 10, 0)

%---------------------------------------------------------------------------

load("LABdata\MOTORtest5_2_5_24.mat"); % SHOW FORWARD-BRAKE: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest5 = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
%other = data.out{4,1};

% ALL DATA PLOT

f5 = figure(5);
f5.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;


disp("MOTOR TEST 5: Forward-Brake:\n")
stepinfo(motor1Speed, time, 10, 0)

%---------------------------------------------------------------------------

load("LABdata\MOTORtest6_2_5_24_AW.mat"); % SHOW FORWARD-BRAKE with AntiWind-Up: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest6AW = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f6= figure(6);
f6.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 6: Forward-Brake with AntiWindUp:\n")
stepinfo(motor1Speed, time, 10, 0)

%---------------------------------------------------------------------------

load("LABdata\MOTORtest7_2_5_24_FC.mat"); % SHOW FORWARD-COAST: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest7FC = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
%other = data.out{4,1};

% ALL DATA PLOT

f7 = figure(7);
f7.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 7: Forward-Coast:\n")
stepinfo(motor1Speed, time, 10, 0)

%---------------------------------------------------------------------------

load("LABdata\MOTORtest8_2_5_24_FC.mat"); % SHOW FORWARD-COAST: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest8FC = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f8 = figure(8);
f8.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 8: Forward-Coast:\n")
stepinfo(motor1Speed, time, 10, 0)


%---------------------------------------------------------------------------

load("LABdata\MOTORtest9_2_5_24_FC_rev.mat"); % SHOW FORWARD-COAST IN REVERSE: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest9FC_rev = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f9 = figure(9);
f9.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 9: Forward-Coast Reverse:\n")
stepinfo(motor1Speed, time, -10, 0)

%---------------------------------------------------------------------------

load("LABdata\MOTORtest10_2_5_24_FB_rev.mat"); % SHOW FORWARD-BRAKE IN REVERSE: WELL DONE, AND STEP AT 5 SECOND PERFECTLY
MOTORtest10FB_rev = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};

% ALL DATA PLOT

f10 = figure(10);
f10.Name= savename;

subplot(311);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(312);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(313);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

disp("MOTOR TEST 10: Forward-Brake Reverse:\n")
stepinfo(motor1Speed, time, -10, 0)


%---------------------------------------------------------------------------

load("LABdata\MOTORtest11_2_5_24_keypad.mat"); % USELESS: CAN BE IGNORED
MOTORtest11KeyPad = data;
time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
other = data.out{4,1};

% ALL DATA PLOT

f11 = figure(11);
f11.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [m/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [m/s]");
grid on;

subplot(413);
hold on;
plot(time, ControlAction);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Mot1ContAction', 'Mot2ContAction');
grid on;

subplot(414);
hold on;
plot(time, other);
xlabel("time [s]");
ylabel("other");
grid on;

%---------------------------------------------------------------------------
%% PRINT

% TILT CONTROL
figure(1);
f1.Name= 'TILT CONTROL'
set(gcf,'defaultAxesTickLabelInterpreter','latex');

plot(time, tilt(1,:), 'LineWidth', 1.25); % Robot tilt angle
hold on
xlim("padded")
ylim("padded")
xlabel("$t \, [s]$", "Interpreter","latex")
ylabel("Tilt angle $ [^\circ deg]$", "Interpreter","latex")

plot(time, tilt(2,:), 'LineWidth', 1.25); % Camera tilt angle given as input
hold on
xlim("padded")
ylim("padded")

grid on;
grid minor;

legend('Robot Tilt Angle', 'Camera Tilt Angle given as motor input', "Interpreter","latex", "Location","best");

title("\bfseries Tilt Angles", "Interpreter","latex")
set(gca, 'FontSize', 12)

exportgraphics(gcf,'Lab2\PlotOutput\LAB2_TiltAngle.pdf','ContentType','vector')