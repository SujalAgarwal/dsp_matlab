clear all;
close all;
clc;
x1=[1 3 5 8 5 7 4 5 8];


N=length(x1);
n=0:1:N-1;
y=[];
for k=0:N-1
    y(k+1)=0;
    for p=0:N-1
        y(k+1)=y(k+1)+x1(p+1)*exp(1i*2*pi*k*p/N);
    end
end
y=y/N;
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
ylabel('y1');
title('Phase')
        
        