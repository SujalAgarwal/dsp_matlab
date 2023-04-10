%downsampling of the signal
clear all;
close all;
clc;
xn=[1 2 3 4 1 -1 -2 3 5 6 7 1 2 4];
N=length(xn);
n=0:1:N-1;
subplot(2,1,1)
stem(n,xn);
xlabel('n');
ylabel('x(n)');
title('Original Signal');
a=input('enter the downsample factor');
x1=xn(1:a:N);
n1=1:1:N/a;
subplot(2,1,2)
stem(n1,x1);
xlabel('n');
ylabel('x1');
title('Signal after downsampling..');