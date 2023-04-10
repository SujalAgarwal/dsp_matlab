%matlab code to comute dft  of a sequence without using matlab inbuilt
%function
clear all;
close all;
clc;

x1=[10 3 5 8 5 7];

j^2==-1;
N=length(x1);
n=1:1:N;
y=[];
for k=1:N
    y(k)=0;
    for p=1:N
        y(k)=y(k)+x1(p)*exp(-1i*2*pi*k*p/N);
    end
end
y1=abs(y);
y2=angle(y);
subplot(3,1,1)
stem(n,x1);
xlabel('n');
ylabel('x1');
title('Original Signal')
subplot(3,1,2)
stem(n,y1);
xlabel('n');
ylabel('y1');
title('Magnitude')
subplot(3,1,3)
stem(n,y2);
xlabel('n');
ylabel('y2');
title('Phase')
        
        