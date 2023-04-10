%Write a MATLAB Program to find the poles and zeros of z-domain signal,
%(z2 + 0.86𝑧 + 0.8)/(𝑧2 + 0.74) and sketch the pole zero plot
clear all;
close all;
clc;
syms z;
ts=1;
%numerator coefficient
x1=[1 0.86 0.8];
%denominator coefficient
x2=[1 0 0.74];
S=tf('z');
s=tf(x1,x2,ts);
zgrid;
pzmap(s);