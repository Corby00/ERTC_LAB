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
%data = serial_datalog('COM4' , {'1*single','1*single', '2*single', '1*single'}, 'baudrate', 115200, 'buffersize', 5000)

data = udp_datalog('147.162.118.147', 9090, {'1*single','1*single', '1*single'}, 'buffersize', 100000, 'plotrefreshratio', 10) %port = 9090

% 	The data acquired are respectively:
% 		motor1 speed [rad/s]
%       motor2 speed [rad/s]
%       controlAction mot1
%		controlAction mot2
%		errror e_SL


% save data
savename = 'LAB4_autocross_profContr_FC_wAW_06speed_adaptiveCont_record';
%savename = 'LAB_skipad_profContr_FC_wAW_06speed_adaptiveCont_record';
save(savename);

% On 'LAB_skipad_profContr_wAntiWindUp', from circa 30s to 51s a lap;
% 'LAB_skipad_profContr_FC_wAntiWindUp' FC stands for Forwar-Coast
% LAB_skipad_profContr_FC_wAntiWindUp from 25s to 41s a lap;
% 'LAB4_autocross_profContr_FC_wAntiWindUp'from 18s to 38-40s;
% 'LAB4_autocross_profContr_FC_wAW_04speed' from 37s to 55s;
% 'LAB_skipad_profContr_FC_wAW_06speed_adaptiveCont_record' from 10 to 19.5


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
ylabel("Tracking error $e_{SL}$");
xlabel("time [s]");
grid on;
