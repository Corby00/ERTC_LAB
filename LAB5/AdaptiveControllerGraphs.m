% -------------------------------------------------------------------------
% EMBEDDED AND REAL TIME CONTROL: GROUP 5
% Components: Azadegan, Corbioli, Fusari, Garbo
%
% Script for creating graphs of dependence of adaptive controller speed
% gains to error e_SL.
%--------------------------------------------------------------------------

close all;
clear all;
clc;

e_SL = -0.028:0.0001:0.028;
H = 0.085;
psi_err = atan(e_SL/H);

possible_e_SL = [-0.028, -0.024, -0.020, -0.016, -0.012, -0.008, -0.004, 0, 0.004, 0.008, 0.012, 0.016, 0.020, 0.024, 0.028];
possible_psi_err = atan(possible_e_SL/H);

%% FIRST PLOT: RELATION BETWEEN e_SL and psi_err

f1= figure(1);
f1.Name = "Psi_err";
plot(e_SL, psi_err, 'LineWidth', 1.15);
xlabel("$e_{SL}$",  "Interpreter","latex");
ylabel("$\psi_{err}$", "Interpreter","latex");
grid on;
grid minor;


%% SECOND PLOT: ACTUAL GAIN CHANGE IN FUNCTION OF psi_err

gain = zeros(size(psi_err));

index = find(psi_err <= -0.02 | psi_err >= 0.02);
gain(index) = 0.60;
index = find(psi_err > -0.02 & psi_err <= -0.01);
gain(index) = +40*psi_err(index) + 1.40;
index = find(psi_err < 0.02 & psi_err >= +0.01);
gain(index) = -40*psi_err(index) + 1.40;
index = find(psi_err > -0.01 & psi_err < 0.01);
gain(index) = 1;

possible_gain = gain(ismember(psi_err, possible_psi_err));

f2= figure(2);
% f2.WindowState = 'maximized';
% pause(1);
f2.Name = "Adaptive_Controller_Speed_Gain";

set(gcf,'defaultAxesTickLabelInterpreter','latex');

plot(psi_err, gain, 'LineWidth', 1.15, 'Color', [0 0.4470 0.7410]);
xlabel("$\mathbf{\psi_{err}}$", "Interpreter","latex");
ylabel("\textbf{Speed gain}",  "Interpreter","latex");
ylim([0, 1.1]);
xlim("tight");
hold on;
grid on;
grid minor;

set(gca, 'FontSize', 10)
plotName = ".\PlotOutput\" + f2.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')

%scatter(possible_psi_err, possible_gain,[], [0 0.4470 0.7410], 'filled');

%% THIRD PLOT: ACTUAL (and thought in designing phase) GAIN CHANGE IN
% FUNCTION OF e_SL

gain2 = zeros(size(e_SL));

index = find(e_SL <= -0.02 | e_SL >= 0.02);
gain2(index) = 0.60;
index = find(e_SL > -0.02 & e_SL <= -0.01);
gain2(index) = +40*e_SL(index) + 1.40;
index = find(e_SL < 0.02 & e_SL >= +0.01);
gain2(index) = -40*e_SL(index) + 1.40;
index = find(e_SL > -0.01 & e_SL < 0.01);
gain2(index) = 1;

f3= figure(3);
f3.Name = "Adaptive_Controller_Speed_Gain_over_e_SL";

set(gcf,'defaultAxesTickLabelInterpreter','latex');

plot(e_SL, gain2, 'LineWidth', 1.15, 'Color',[0.8500 0.3250 0.0980]);
hold on;
plot(H*tan(psi_err), gain, 'LineWidth', 1.15, 'Color', [0 0.4470 0.7410]);
xlabel("$\mathbf{e_{SL}}$", "Interpreter","latex");
ylabel("\textbf{Speed gain}",  "Interpreter","latex");
ylim([0, 1.1]);
xlim("tight");

grid on;
%grid minor;
legend("Actual Gain", "Designed Gain", "Interpreter","latex", "Location","best");

%scatter(H*tan(possible_psi_err), possible_gain, [], [0 0.4470 0.7410], 'filled');
possible_gain = gain2(ismember(e_SL, possible_e_SL));
%scatter(H*tan(possible_psi_err), possible_gain,[], [0.8500 0.3250 0.0980], 'filled');

set(gca, 'FontSize', 10)
plotName = ".\PlotOutput\" + f3.Name + ".pdf";
exportgraphics(gcf,plotName,'ContentType','vector')

% ERROR WEIGHTS
%xline([0.028, 0.02, 0.012, 0.004, -0.004, -0.012, -0.02, -0.028], '--')
