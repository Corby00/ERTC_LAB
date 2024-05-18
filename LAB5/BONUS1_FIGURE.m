%% FIGURE BONUS1

load("LABData/LAB4_autocross_profContr.mat");

% Data taken quite bad. There is a missing sending data from 24s to 33s
% circa, and also a awful peak in motor 1 at 9.08s.

% Despite everything, still something can be recovered, in particular,
% since first approach, the controller has still to be tuned and this can
% be observed by the fact that it is very nervous.

% In the folder of LAB4 there is a png where a the turns are tried to be
% retrivered. 

Autocross_pC = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
Error = data.out{4,1};

f2 = figure(2);
f2.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [rad/s]");
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
plot(time, Error);
xlabel("time [s]");
ylabel("Error");
grid on;

	plotName = "./PlotOutput/" + f2.Name + ".pdf";
	exportgraphics(gcf,plotName,'ContentType','vector')


%% 

load("LABData/LAB4_autocross_profContr_FC_wAntiWindUp.mat");

% Data taken very well, everything fine.

% 'LAB4_autocross_profContr_FC_wAntiWindUp'from 18s to 38-40s;

% On time [4; 5] done turns 9 and 10
% All the other turns can be retrived very easily

Autocross_pC_FC_wAW = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
Error = data.out{4,1};

f3 = figure(3);
f3.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [rad/s]");
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
plot(time, Error);
xlabel("time [s]");
ylabel("Error");
grid on;

plotName = "./PlotOutput/" + f3.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')

%% 

load("LABData\LAB4_autocross_profContr_FC_wAW_04speed.mat");


% Data taken very well, everything fine.

% 'LAB4_autocross_profContr_FC_wAW_04speed' from 37s to 55s;

% This is the fastest lap achieved without using adaptive controller.
% The turns can be recognized very easily and also the mean speed is very
% high, while in turning, the inner wheel is almost blocked.

% [15; 17] turns 9-10

Autocross_pC_FC_wAW_04 = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
Error = data.out{4,1};

f4 = figure(4);
f4.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [rad/s]");
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
plot(time, Error);
xlabel("time [s]");
ylabel("Error");
grid on;

plotName = "./PlotOutput/" + f4.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')
%% 

load("LABData\LAB_skipad_profContr_wAntiWindUp.mat");

% Data taken very well, everything fine.

% 'LAB_skipad_profContr_wAntiWindUp', from circa 30s to 51s a lap

% This snapshot was taken with the saturation of the wheel speed to 0 as
% lower limit; however on right turns the inner wheel speed goes behind
% zero since it is forced to rotate. 

% Another lap in [15;31]

% In [15.5;16] and [31;32] First 90° right turn
% In [16;18]  small straightway 
% In [18.5;20] Second 90° right turn 
% In [22.5; 27.5] long right turn


Skipad_pC_FB_wAW = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
Error = data.out{4,1};

f5 = figure(5);
f5.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [rad/s]");
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
plot(time, Error);
xlabel("time [s]");
ylabel("Error");
grid on;

plotName = "./PlotOutput/" + f5.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')

%% 

load("LABData\LAB_skipad_profContr_FC_wAntiWindUp.mat");

% Data taken very well, everything fine.
% LAB_skipad_profContr_FC_wAntiWindUp from 25s to 41s a lap

% Also another lap can be recognized in 10s to 26s 

% In [10;12] and [26;28] small straightway 
% In [12;14] and [28;30] Second 90° right turn 
% In [16; 21] and [31.5;37.5] long right turn
% In [24:26] and [40;42] First 90° right turn

% With respect to FB, this with FC is less jittery (nervous), this can be
% noticed by the fact that it has less correction (Lower peaks frequency),
% for example in the long right turn (turn 3).
% However with FC, the control action is more jittery (higher correction
% frequency). and also the amplitude of oscillations is greater on FC.

Skipad_pC_FC_wAW = data;

time = data.time;
motor1Speed = data.out{1,1};
motor2Speed = data.out{2,1};
ControlAction = data.out{3,1};
Error = data.out{4,1};

f6 = figure(6);
f6.Name= savename;

subplot(411);
plot(time, motor1Speed);
xlabel("time [s]");
ylabel("Motor1 Speed [rad/s]");
grid on;

subplot(412);
plot(time, motor2Speed);
xlabel("time [s]");
ylabel("Motor2 Speed [rad/s]");
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
plot(time, Error);
xlabel("time [s]");
ylabel("Error");
grid on;

plotName = "./PlotOutput/" + f6.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')