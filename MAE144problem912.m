% MAE 144 HW1
%% Problem 9-12 
clear
close all
clc

figure(1)
a = tf([1],[1 1]);
bode(a)

figure(2)
b = tf([1 -1],[1]);
bode(b)

figure(3)
c = tf([1 -1],[1 1]);
bode(c)

figure(4)
d = tf([1 101 100],[1 0]);
bode(d)

figure(5)
e = tf([1 0],[1 101 100]);
bode(e)

figure(6)
f = tf([1],[1 1 1]);
bode(f)
