% MAE 144 HW1

%% Problem 9.8 part b
clear
close all
clc

syms M K C c k s m
L1 = M*s^2 + C*s + K;
L2 = K + C*s;
L3 = m*s^2 + k + c*s;
L4 = k + c*s;

L5 = expand(L1*L3-L4^2+L4*L3)
L6 = expand(L2*L3)
den = [M*m, C*m+M*c+c*m, k*m+C*c+K*m+M*k, C*k+K*c, K*k];
num = [C*m, C*c+K*m, C*k+K*c, K*k];
system = RR_tf(num, den)

%% Problem 9.8 part d
clear

syms  s k c
m=0;
M=10;
K=10;
C=0;
L1 = M*s^2 + C*s + K
L2 = K + C*s
L3 = m*s^2 + k + c*s
L4 = k + c*s

L5 = expand(L1*L3-L4^2+L4*L3)
L6 = expand(L2*L3)
sys1=tf([1],[1 0 1])
Poles=pole(sys1)
Zeroes=zero(sys1)
figure(1)
bode(sys1)

%% Problem 9.8 part e

figure(2)
step(sys1)
sys2=tf([1],[1 0 1 0])
Poles=pole(sys2)
Zeroes=zero(sys2)

figure(3)
step(sys2)

%% Prooblem 9.8 part f 
clear

[Z,P,K] = tf2zp([sqrt(2),1],[1,sqrt(2), 1])
figure(5)
bode([sqrt(2),1],[1,sqrt(2), 1])

figure(6)
impulse([sqrt(2),1],[1,sqrt(2), 1])

figure(7)
step([sqrt(2),1],[1,sqrt(2), 1,0])
%% Problem 9.8 part g
clear

syms s

M = 10;
K = M;
m = 1;
k = 9;

L6 = [K*m, 0, K*k];
L5 = [M*m, 0, k*m+K*m+M*k, 0, K*k];
system = tf(L6,L5)
P= pole(system)

