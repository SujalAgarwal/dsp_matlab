%write a matlab code to find the dft of a sequence
clear all;
close all;
clc;
n=0:1:5;
x1=[1 2 3 4 5 6 ]
x2=fft(x1);
x3=abs(x2);
x4=angle(x2);
subplot(3,1,1);
stem(n,x1);
xlabel('n');
ylabel('x1');
title('original signal');
subplot(3,1,2);
stem(n,x3);
xlabel('n');
ylabel('x3');
title('Magnitude');
subplot(3,1,3);
stem(n,x4);
xlabel('n');
ylabel('x4');
title('Phase');