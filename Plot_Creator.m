% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 4
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for plotting the acquired data
%--------------------------------------------------------------------------

%% DATA IMPORT

close all;
clear all;
clc;

load("Lab2\InPresence\matlab\LabData.mat");

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
%pan = data.out{4,1};

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
