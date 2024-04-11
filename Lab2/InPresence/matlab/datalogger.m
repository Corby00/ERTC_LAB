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
data = serial_datalog('COM5' , {'3*single','3*single','2*single','2*single', 'uint8'}, 'baudrate', 115200)

% 	The data acquired are respectively:
% 		- accelerometer data along x, y and z axis;
% 		- gyroscopes data along x, y, and z axis;
% 		- tilt control: robot tilt angle and camera tilt angle given as input;
%		- pan control: robot pan angle and camera pan angle given as input;


% save data
save('LabDatashoot3');
