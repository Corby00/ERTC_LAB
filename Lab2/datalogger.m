%% ERTC LAB: LAB2

%% INITIALISATION
% Clearing of all the variables, reset of the serial communication and
% print of all the serial port connected.

clear all;
close all;
clc;
instrreset;

disp("List of ports:");
disp(seriallist);

% serialportlist

%% DATA ACQUIRING

% Read data from serial port. ! Recall to check the port at the beginning
% and eventually change it.

%data = serial_datalog('COM10' , {'2*single','1*single','2*single'}, 'baudrate', 115200, 'buffersize', 5000); % For ex1
%data = serial_datalog('COM10' , {'2*single','1*single','2*single'}, 'baudrate', 115200, 'buffersize', 5000);  % For bonus1
data = serial_datalog('COM10' , {'1*single','2*single','2*single', '2*single'}, 'baudrate', 115200, 'buffersize', 5000);  % For bonus2

% 	The data acquired are respectively:
% 		- accelerometer data along y, and z axis;
% 		- gyroscopes data along z axis;
% 		- tilt control: robot tilt angle and camera tilt angle given as input if ex1 or bonus2
% 		- pan control: robot pan angle and camera pan angle given as input if bonus 1
%		- til1 and til2: robot tilt angle 1 (computed through arcsin) and tilt angle 2 (computed through arccos) 


% save data
savename = '..\Lab2\LABData\Bonus2_29052024_shot7'; % From shot 3 it has been used gyroscope along x axis % shot 7 the best one
save(savename);

%% PLOT VISUALISATION

load(savename)

close all;
figure(1000);

subplot(411);
plot(data.time, data.out{1,1});
xlabel("time [s]");
ylabel("Acceleration [m/s]");
legend("y_axis")
grid on;

subplot(412);
plot(data.time, data.out{2,1});
xlabel("time [s]");
ylabel("Gyroscope [rad/s]");
legend("x_axis", "z_axis");
grid on;

subplot(413);
hold on;
plot(data.time, data.out{3,1});
xlabel("time [s]");
ylabel("Tilt or Pan angle [deg]");
legend('robot angle', 'camera input angle');
grid on;

subplot(414);
plot(data.time, data.out{4,1});
xlabel("time [s]");
ylabel("Tilt angles [deg]");
legend("Angle 1 - asin y_acc", "Angle 2 - gyro x_axis")
grid on;
