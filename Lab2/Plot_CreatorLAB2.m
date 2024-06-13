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

ToRawDataPlot = 0;       % Wether to plot raw data figures or not.
ToReportPlot = 1;        % Wether to plot report figures or not.
Toprint = 1;            % Wether to print report figures or not.

%---------------------------------------------------------------------------

load("LABData\Ex1_29052024_shot1.mat");

ex1shot1 = data;

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


ex1shot2 = data;

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


bonus1shot1 = data;

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


bonus1shot2 = data;

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

%--------------------------------------------------------------------------

load("LABData\Bonus2_29052024_shot1.mat");

% TILT 2 computed from acceleration along z-axis (az).
% ERROR IN COMPUTING angle TILT2: it is always positive and hence the
% control action is not correct;

bonus2shot1 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

f5 = figure(5);
f5.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------

load("LABData\Bonus2_29052024_shot2.mat");

% TILT 2 computed from acceleration along z-axis (az).
% ERROR IN COMPUTING angle TILT2: it is always positive and hence the
% control action is not correct;

bonus2shot2 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------

load("LABData\Bonus2_29052024_shot3.mat");

% TILT 2 computed from acceleration along z-axis (az).
% ERROR IN COMPUTING angle TILT2: it is always positive and hence the
% control action is not correct;

bonus2shot3 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------
load("LABData\Bonus2_29052024_shot4.mat");

% TILT 2 computed from gyroscope along z-axis (gz).
% Error in sending control action;

bonus2shot4 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------
load("LABData\Bonus2_29052024_shot5.mat");

% TILT 2 computed from gyroscope along z-axis (gz).
% Everything seems nice;

bonus2shot5 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------
load("LABData\Bonus2_29052024_shot6.mat");

% TILT 2 computed from gyroscope along z-axis (gz).
% Everything seems nice; better than shot 5;

bonus2shot6 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------
load("LABData\Bonus2_29052024_shot7.mat");

% TILT 2 computed from gyroscope along z-axis (gz).
% Everything seems nice; Best shot, shows also the dynamics with high
% oscillation frequency.

bonus2shot7 = data;

time = data.time;
accelerometer = data.out{1,1};
gyroscope = data.out{2,1};
tilt = data.out{3,1};
tilt12 = data.out{4,1};

fig = figure();
fig.Name= savename;

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
ylabel("Tilt angles [deg]");
legend('Robot Angle', 'ControlAction');
grid on;

subplot(414);
hold on;
plot(time, tilt12);
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend('Tilt1', 'Tilt2');
grid on;

%--------------------------------------------------------------------------

if(not(ToRawDataPlot))
	close all;
end

%% PLOTS WELL DONE FOR REPORT

%--------------------------------------------------------------------------
% ES 1: TILT CONTROL
%--------------------------------------------------------------------------

f1001 = figure(1001);
f1001.WindowState = 'maximized';
pause(1);
f1001.Name = 'ES1TiltControl'; % It is also the name for saving the plot.

set(gcf,'defaultAxesTickLabelInterpreter','latex');

data = ex1shot2;

time = data.time;

% Filtering the data for time included in [minTime; maxTime]
minTime = 0;
maxTime = 6;

index = find(time>minTime-timeStep & time<maxTime+timeStep);

time = time(index);
accelerometer = data.out{1,1} (1, index);
tilt = data.out{3,1}(:, index);

if (ToReportPlot | Toprint)
	subplot(211);
	plot(time, accelerometer, 'LineWidth', 1.15);
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Robot Accelerations $[m/s]$", "Interpreter","latex");
	xlim('tight');
	ylim('padded');
	grid on;
	grid minor;
	hold on;
	legend('$y$-axis', '$z$-axis', "Interpreter", "latex", "Location","northeast");
	set(gca, 'FontSize', 10)

	subplot(212);
	plot(time, tilt, 'LineWidth', 1.15);
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Tilt Angles $[deg]$", "Interpreter","latex");
	grid on;
	grid minor;
	xlim('tight');
	ylim('padded');
	hold on;
	legend('Robot angle', 'Control action', "Interpreter", "latex", "Location","best");
	set(gca, 'FontSize', 10)

	%sgtitle("\bfseries Tilt Angles", "Interpreter","latex") % Title for
	%the whole figure.
end

if (Toprint)
	plotName = ".\PlotOutput\" + f1001.Name + ".pdf";
	exportgraphics(gcf,plotName,'ContentType','vector')
end

%--------------------------------------------------------------------------
% BONUS 1: PAN CONTROL
%--------------------------------------------------------------------------

f1002 = figure(1002);
f1002.WindowState = 'maximized';
pause(1);
f1002.Name = 'BONUS1PanControl'; % It is also the name for saving the plot.

set(gcf,'defaultAxesTickLabelInterpreter','latex');

data = bonus1shot1;

time = data.time;

% Filtering the data for time included in [minTime; maxTime]
minTime = 0;
maxTime = 6;

index = find(time>minTime-timeStep & time<maxTime+timeStep);

time = time(index);
gyroscope = data.out{2,1} (:, index);
tilt = data.out{3,1}(:, index);

if (ToReportPlot | Toprint)
	subplot(211);
	plot(time, gyroscope, 'LineWidth', 1.15);
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Gyroscope $[rad/s]$", "Interpreter","latex");
	xlim('tight');
	ylim('padded');
	grid on;
	grid minor;
	hold on;
	legend('$z$-axis', "Interpreter", "latex", "Location","northeast");
	set(gca, 'FontSize', 10)

	subplot(212);
	plot(time, tilt, 'LineWidth', 1.15);
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Pan Angles $[deg]$", "Interpreter","latex");
	grid on;
	grid minor;
	xlim('tight');
	ylim('padded');
	hold on;
	legend('Robot angle', 'Control action', "Interpreter", "latex", "Location","best");
	set(gca, 'FontSize', 10)
	
	% Figure just to check a possible error...
	fig= figure();
	fig.WindowState= "maximized";
	pause(1);
	plot(time, tilt(1,:) + tilt(2,:));
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Pan Angles $[deg]$", "Interpreter","latex");
	grid on;
	grid minor;
	xlim('tight');
	ylim('padded');
	hold on;
	set(gca, 'FontSize', 10)

	%sgtitle("\bfseries Tilt Angles", "Interpreter","latex") % Title for
	%the whole figure.
end

if (Toprint)
	plotName = ".\PlotOutput\" + f1002.Name + ".pdf";
	exportgraphics(gcf,plotName,'ContentType','vector')
end

%--------------------------------------------------------------------------
% BONUS 2: TILT CONTROL WITH COMPLEMENTARY FILTER --------------------------------- CHECK FILTER NAME
%--------------------------------------------------------------------------

f1003 = figure(1003);
f1003.WindowState = 'maximized';
pause(1);
f1003.Name = 'BONUS2_TiltControlWComplementaryFilter'; % It is also the name for saving the plot.

set(gcf,'defaultAxesTickLabelInterpreter','latex');

data = bonus2shot7;

time = data.time;

% Filtering the data for time included in [minTime; maxTime]
minTime = 4;
maxTime = 11;

index = find(time>minTime-timeStep & time<maxTime+timeStep);

time = time(index);
acceleration = data.out{1,1} (:, index);
gyroscope = data.out{2,1}(1, index); % It is considered only the gyroscope along x-axis.
tilt = data.out{3,1}(:, index);
tilt12 = data.out{4,1}(:, index);

if (ToReportPlot | Toprint)
	subplot(311);
	yyaxis left
	plot(time, acceleration, 'LineWidth', 1.15);
	ylabel("Acceleration $[m/s]$", "Interpreter","latex");
	hold on;
	yyaxis right
	plot(time, gyroscope, 'LineWidth', 1.15)
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Gyroscope $[rad/s]$", "Interpreter","latex");
	xlim('tight');
	ylim('padded');
	grid on;
	grid minor;
	legend('Acc. $y$-axis','Gyro. $x$-axis',  "Interpreter", "latex", "Location","northeast");
	set(gca, 'FontSize', 10)

	subplot(312);
	plot(time, tilt(1,:), 'LineWidth', 1.15);
	hold on
	plot(time, tilt12, '--' ,'LineWidth',1.15);
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Tilt Angles $[deg]$", "Interpreter","latex");
	grid on;
	grid minor;
	xlim('tight');
	ylim('padded');
	hold on;
	legend('Robot Angle', 'Tilt angle 1', 'Tilt angle 2', "Interpreter", "latex", "Location","best");
	set(gca, 'FontSize', 10)

	subplot(313);
	plot(time, tilt, 'LineWidth', 1.15);
	hold on
	xlabel("Time $t \, [s]$",  "Interpreter","latex");
	ylabel("Tilt Angles $[deg]$", "Interpreter","latex");
	grid on;
	grid minor;
	xlim('tight');
	ylim('padded');
	hold on;
	legend('Robot angle', 'Control action', "Interpreter", "latex", "Location","best");
	set(gca, 'FontSize', 10)
	%sgtitle("\bfseries Tilt Angles", "Interpreter","latex") % Title for
	%the whole figure.
end

if (Toprint)
	plotName = ".\PlotOutput\" + f1003.Name + ".pdf";
	exportgraphics(gcf,plotName,'ContentType','vector')
end
