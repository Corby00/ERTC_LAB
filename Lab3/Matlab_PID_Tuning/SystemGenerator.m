%% INITIALISATION

clear all;
close all;
clc;

rpm2rads = 2*pi/60;

%EDO = 0.1704, 0.8510
%
%ISA = 50, 8  (It works with reference in rad/s and does not take into
% account any convertion from rad/s to rpm... for such reason the gains are
% so high. Dividing the gains by rads2rpm gives 5.219 and 0.835...
%
%Auto = 0.03256, 4.402 

% Tuning with Ziegler-Nichols Methods:
% Ku= 0.75
% Tu= 77.338 ms
% Kp= 0.45Ku = 0.3375
% Ki= 0.54 Ku/Tu = 5.236753

Kp = 0.14 * 1/rpm2rads;
Ki = 2.14 * 1/rpm2rads; % Should work good enough... must be multiplied by rads2rpm

% N.B. Despite we have designed the controller by emulation, still the gain
% found does not need to be converted till the sampling time is small
% enough. If problems raises due to the high sampling time, the best
% solution is to discretize the plan and design directly the digital
% controller.

%%  SYSTEM CREATION

Ts = 0.01; %[s], sampling time.

mu = 33.922 * rpm2rads;
tau = 0.02;
a = 0.217;

s=tf('s');

P = (mu/(1+a*s))*exp(-tau*s) %[It takes as input V (volts) and returns as outuput rad/s]

%% Variables for PID autotuner

ts_5 = 0.2;    % settling time at 5% [s]
M_p = 0.1;     % Maximum oveshoot 10%
alpha = 4;

delta = (log(1/M_p))/(sqrt(pi^2+log(1/M_p)*log(1/M_p)));
phi_m = atan((2*delta)/(sqrt(sqrt(1+4*(delta ^4)) - 2*(delta ^2)))); %Phase margin
w_gc = 3/(delta*ts_5); % Target Bandwidth