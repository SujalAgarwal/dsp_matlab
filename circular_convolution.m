%circular convolution code
clear all;
close all;
clc;
x1=[1 2 3 5 6 8 9  4 5 7];
x2=[3 2 5 8 9 4 5 3 6 7 ];
N=length(x1);
n=0:1:N-1;
y=cconv(x1,x2,N);
subplot(3,1,1)
stem(n,x1);
xlabel('n');
ylabel('x1');
title('original signal 1');
subplot(3,1,2)
stem(n,x2);
xlabel('n');
ylabel('x2');
title('original signal 2');
subplot(3,1,3)
stem(n,y);
xlabel('n');
ylabel('y');
title('After Circular Convolution..');
