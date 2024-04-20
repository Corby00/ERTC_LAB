%% ERTC LAB: LAB3

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
data = serial_datalog('COM6' , {'1*single','1*single', '2*single' }, 'baudrate', 115200)

% 	The data acquired are respectively:
% 		motor1 speed [rad/s]
%       motor2 speed [rad/s]


% save data
save('MOTORtest2');
