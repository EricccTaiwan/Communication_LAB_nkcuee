%step3
clear all;close all
fs=80; %設定取樣頻率80 Hz
ts=1/fs;
t=0:0.00001:0.08;
n=0:ts:0.08;
f11 = 100
f12 = 200
f21 = f11-fs/2 %60
f22 = f12-fs %120
f31= 140 %20
f32 = 280 %120
x1 = 2*cos(2*pi*f11*t)+3*sin(2*pi*f12*t); %極高取樣近似的連續波
x2 = 2*cos(2*pi*f11*n)+3*sin(2*pi*f12*n); %以80 Hz取樣的訊號
x3 = 2*cos(2*pi*f21*t)+3*sin(2*pi*f22*t); %產生另一個極高取樣近似的連續波
x4 = 2*cos(2*pi*f21*n)+3*sin(2*pi*f22*n);
x5 = 2*cos(2*pi*f31*t)+3*sin(2*pi*f32*t); 
x6 = 2*cos(2*pi*f31*n)+3*sin(2*pi*f32*n);

%承左圖
plot(t,x1)
hold on
plot(t,x3,'r')
plot(t,x5,'g')
stem(n,x2,'k')
stem(n,x4)
stem(n,x6)
legend({'x1(t)','x2(t)','x3(t)','x1(n),x2(n),x3(n)'})


