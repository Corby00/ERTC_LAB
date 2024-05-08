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
data = serial_datalog('COM6' , {'1*single','1*single', '2*single', '1*int8'}, 'baudrate', 115200, 'buffersize', 5000)

% 	The data acquired are re spectively:
% 		motor1 speed [rad/s]
%       motor2 speed [rad/s]


% save data
savename = 'MOTORtest11_2_5_24_keypad';
save(savename);


%% PLOT VISUALISATION

load(savename)

close all;
figure(1);

subplot(411);
plot(data.time, data.out{1,1});
xlabel("time [s]");
ylabel("motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(data.time, data.out{2,1});
xlabel("time [s]");
ylabel("motor2 Speed [rad/s]");
grid on;

subplot(413);
hold on;
plot(data.time, data.out{3,1});
xlabel("time [s]");
ylabel("Control action [V]");
legend('mot1', 'mot2');
grid on;

subplot(414);
plot(data.time, data.out{4,1});
xlabel("time [s]");
grid on;
