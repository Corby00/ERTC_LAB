%% INITIALISATION

clear all;
close all;
clc;

%%  SYSTEM CREATION

mu = 33.922;
tau = 0.02;
a = 0.217;

s=tf('s');

P = (mu/(1+a*s))*exp(-tau*s)

