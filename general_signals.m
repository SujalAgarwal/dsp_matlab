%generate discrete standard signals.
clear all;
close all;
clc;
n=-10:1:10;
%generating unit step signal..
x1=[];
for i=1:length(n)
    if n(i)<0
        x1(i)=0
    else 
        x1(i)=1
    end
end
subplot(4,1,1);
stem(n,x1);
xlabel('n');
ylabel('x1');
title('unit step signal')
%generating unit impulse signal
x2=[];
for i=1:length(n)
    if n(i)==0
        x2(i)=1
    else 
        x2(i)=0
    end
end
subplot(4,1,2);
stem(n,x2);
xlabel('n');
ylabel('x2');
title('unit impulse signal')
%generating unit ramp signal
x3=[];
for i=1:length(n)
 x3(i)=n(i);
end
subplot(4,1,3);
stem(n,x3);
xlabel('n');
ylabel('x3');
title('unit ramp signal')
%generating unit exponential  signal
x4=[];
for i=1:length(n)
   x4(i)=exp(n(i));
end
subplot(4,1,4);
stem(n,x4);
xlabel('n');
ylabel('x4');
title('unit exponential signal')

    