% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 4
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for plotting PWM signals for comparison between forward/coast and
% forward/brake.
%--------------------------------------------------------------------------

clear all;
close all;
clc;

saveFlag = 1;

timeStep = 0.01;
time = 0:timeStep:12;

duty = 0.55;
T = 4;

maxVolt= 2;

signal1_FC = zeros(1,length(time));
signal2_FC = zeros(1,length(time));

index = find(mod(time, T) <= duty*T);
signal1_FC(index)=maxVolt;

f1=figure;
f1.Name='ForwardCoast';

plot(time, signal1_FC, 'LineWidth',1.25);
xlabel("time $t$", 'Interpreter','latex');
ylabel("Voltage", 'Interpreter','latex');
hold on;

plot(time, signal2_FC, 'LineWidth',1.25);

xline(T*duty, '--k');
xline(T, '--k');
xline(T+T*duty, '--k');
xline(2*T, '--k');
xline(2*T+T*duty, '--k');
xline(3*T, '--k');
hold on;

legend("Channel 1", "Channel 2", "Interpreter", "Latex")

text(T*duty/5, 1, "Forward")
text(T+T*duty/5, 1, "Forward")
text(2*T+T*duty/5, 1, "Forward")
text(T*duty+(T-T*duty)/4, 1, "Coast")
text(T+T*duty+(T-T*duty)/4, 1, "Coast")
text(2*T+T*duty+(T-T*duty)/4, 1, "Coast")

ylim([-0.5, 2.5]);

set(gca,'YTickLabel',[]);
set(gca,'XTickLabel',[]);

%% FORWARD-BRAKE

index0 = find(signal1_FC==0);
index1 = find(signal1_FC==maxVolt);

signal1_FB = ones(1, length(time));
signal1_FB(:) = maxVolt;
signal2_FB = ones(1, length(time));
signal2_FB(index0) = maxVolt;
signal2_FB(index1) = 0;

f2=figure;
f2.Name = 'ForwardBrake';

plot(time, signal1_FB, 'LineWidth',1.25);
xlabel("time $t$", 'Interpreter','latex');
ylabel("Voltage", 'Interpreter','latex');
hold on;

plot(time, signal2_FB, 'LineWidth',1.25);

xline(T*duty, '--k');
xline(T, '--k');
xline(T+T*duty, '--k');
xline(2*T, '--k');
xline(2*T+T*duty, '--k');
xline(3*T, '--k');
hold on;

legend("Channel 1", "Channel 2", "Interpreter", "Latex")

text(T*duty/5, 1, "Forward")
text(T+T*duty/5, 1, "Forward")
text(2*T+T*duty/5, 1, "Forward")
text(T*duty+(T-T*duty)/4, 1, "Brake")
text(T+T*duty+(T-T*duty)/4, 1, "Brake")
text(2*T+T*duty+(T-T*duty)/4, 1, "Brake")

ylim([-0.5, 2.5]);

set(gca,'YTickLabel',[]);
set(gca,'XTickLabel',[]);

%% SAVE FIGURES

if(saveFlag)
	figure(1)
	plotName= (".\PlotOutput\" + f1.Name + ".pdf");
	exportgraphics(gcf,plotName,'ContentType','vector');
	figure(2)
	plotName= (".\PlotOutput\" + f2.Name + ".pdf");
	exportgraphics(gcf,plotName,'ContentType','vector')
end
