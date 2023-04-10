%idft of the sequence
clear all;
close all;
clc;
n=0:1:5;
x1=[1 2 3 4 5 6 ]
x2=fft(x1);
x3=abs(x2);
x4=angle(x2);
x5=ifft(x2);
subplot(2,2,1);
stem(n,x1);
xlabel('n');
ylabel('x1');
title('original signal');
subplot(2,2,2);
stem(n,x3);
xlabel('n');
ylabel('x3');
title('Magnitude');
subplot(2,2,3);
stem(n,x4);
xlabel('n');
ylabel('x4');
title('Phase');
subplot(2,2,4);
stem(n,x5);
xlabel('n');
ylabel('x5');
title('Original signal after ifft');

