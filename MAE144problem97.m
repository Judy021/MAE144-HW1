% MAE 144 HW1
%% Problem 9.7 a)
clear
close all
clc

b3_bar = 0.000001;
b2_bar = 0.0018240;
b1_bar = 1.0706;
b0_bar = 201.40;

a5 = 0.05;
a4 = 32.361;
a3 = 0.76881;
a2 = 237.95;
a1 = 1.0706;
a0 = 201.40;

figure(1)
num = [b3_bar, b2_bar, b1_bar, b0_bar];
den = [1 a5 a4 a3 a2 a1 a0];
TFa = tf(num, den);
P1 = pole(TFa)
bode(TFa)
grid on

%% Problem 9.7 b)

b4 = .001;
b3 = .00004; 
b2 = .024320;
b1 = .00036480;
b0 = .10706;

figure(2)
num = [b4, b3, b2, b1, b0];
den = [1 a5 a4 a3 a2 a1 a0];
TFb = tf(num, den);
P2 = pole(TFb)
bode(TFb)
grid on