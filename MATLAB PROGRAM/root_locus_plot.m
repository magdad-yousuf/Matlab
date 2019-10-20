% This creates a root locus plot for
% G(s)=(s+2)/(s^2+6s+10). This is the common method.
close all
clear all
clc
num=[1 2];
den=[1 6 10];
rlocus(num, den);
grid;
title('Root locus');
xlabel('Real parts of the roots');
ylabel('Imaginary parts of the roots');