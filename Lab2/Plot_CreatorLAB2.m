% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 4
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for plotting the acquired data on LAB2
%--------------------------------------------------------------------------

%% PART 1: PLOT OF ALL RAW DATA

close all;
clear all;
clc;

timeStep = 0.01;

ToRawDataPlot = false;       % Wether to plot raw data figures or not.
ToReportPlot = true;        % Wether to plot report figures or not.
Toprint = true;            % Wether to print report figures or not.

%---------------------------------------------------------------------------

load("LABData\Ex1_29052024_shot1.mat");

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
%pan = data.out{4,1};

% ALL DATA PLOT

f1 = figure(1);
f1.Name= savename;

subplot(311);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(312);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(313);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

%--------------------------------------------------------------------------

load("LABData\Ex1_29052024_shot2.mat");

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
%pan = data.out{4,1};

% ALL DATA PLOT

f2 = figure(2);
f2.Name= savename;

subplot(311);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(312);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(313);
hold on;
plot(time, tilt);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

%--------------------------------------------------------------------------

load("LABData\Bonus1_29052024_shot1.mat");

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
pan = data.out{3,1};
%pan = data.out{4,1};

% ALL DATA PLOT

f3 = figure(3);
f3.Name= savename;

subplot(311);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(312);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(313);
hold on;
plot(time, pan);
xlabel("time [s]");
ylabel("Pan angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

%--------------------------------------------------------------------------

load("LABData\Bonus1_29052024_shot2.mat");

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
pan = data.out{3,1};
%pan = data.out{4,1};

% ALL DATA PLOT

f4 = figure(4);
f4.Name= savename;

subplot(311);
plot(time, accelerometer);
xlabel("time [s]");
ylabel("Accelerations [m/s]");
grid on;

subplot(312);
plot(time, gyroscope);
xlabel("time [s]");
ylabel("Gyroscope [m/s]");
grid on;

subplot(313);
hold on;
plot(time, pan);
xlabel("time [s]");
ylabel("Pan angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

%% PRINT
%{
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
%}
