% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 4
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for plotting the acquired data on LAB2
%--------------------------------------------------------------------------

%% DATA IMPORT

close all;
clear all;
clc;

load("InPresence\matlab\LabData.mat");

LabData = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
%pan = data.out{4,1};

% ALL DATA PLOT

f1 = figure(1);
f1.Name= 'LabData';

subplot(411);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(412);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(413);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Control action [V]");
legend('Robot Angle', 'ControlAction');
grid on;

mean(tilt(1,:))

%---------------------------------------------------------------------------


load("InPresence\matlab\LabData2.mat");
LabData2 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
pan = data.out{4,1};

f2 = figure(2);
f2.Name= 'LabData2';

subplot(411);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(412);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(413);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Tilt angle");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, pan);
xlabel("time [s]");
ylabel("Pan Angle");
legend('RObot Angle', 'ControlAction');
grid on;

%---------------------------------------------------------------------------

load("InPresence\matlab\LabDatashoot3.mat");
LabData3 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
pan = data.out{4,1};

f3 = figure(3);
f3.Name= 'LabData3';

subplot(411);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(412);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(413);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Tilt angle");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, pan);
xlabel("time [s]");
ylabel("Pan Angle");
legend('RObot Angle', 'ControlAction');
grid on;

%---------------------------------------------------------------------------

load("InPresence\matlab\ex1_04102024.mat");
LabData4 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
%pan = data.out{4,1};

f4 = figure(4);
f4.Name= 'ex1_04102024';

subplot(411);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(412);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(413);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Tilt angle");
legend('Robot Angle', 'ControlAction');
grid on;

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