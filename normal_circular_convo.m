%performing circular convolution without using inbuilt function...
%input sequence 1
x1=[2 2 5 4 6];
x2=[3 5 4 8 9];
N=length(x1);
x2=x2';
%x1=x1'
y=[];
x1=flip(x1);
for i=1:N
    x3=x1(N-i+1:1:N);
    x4=cat(2,x3,x1);
    x5=x4(1:1:N);
    y(i)=x5*x2;
end
display(y);
n=0:1:N-1;
subplot(3,1,1)
stem(n,x1);
xlabel('n');
ylabel('x1')
title('Original Signal')
subplot(3,1,2)
stem(n,x2);
xlabel('n');
ylabel('x2')
title('Original Signal')
subplot(3,1,3)
stem(n,y);
xlabel('n');
ylabel('y')
title('Convoluted Signal')



    

