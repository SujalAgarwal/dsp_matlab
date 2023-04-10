%upsampling

clear all;
close all;
clc;
n=0:49;
x=sin(2*pi*0.12*n);
a=input('enter the sampling factor');
y=zeros(1,a*length(x));
y([1:a:length(y)])=x;
subplot(2,1,1);
stem(n,x);
title ('original signal');
xlabel(' n');
ylabel('sin(2*pi*n)');
subplot(2,1,2);
stem(n,y(1:length(x)));
title ('upsampled signal');
xlabel(' n');
ylabel('y');