%step3
clear all
fs=80; %設定取樣頻率80 Hz
ts=1/fs;
t=0:0.00001:0.08;
n=0:ts:0.08;
x1=2*cos(2*pi*100*t)+3*sin(2*pi*120*t); %極高取樣近似的連續波
x2=2*cos(2*pi*100*n)+3*sin(2*pi*120*n); %以80 Hz取樣的訊號
x3=2*cos(2*pi*20*t)+3*sin(2*pi*40*t); %產生另一個極高取樣近似的連續波
x4=2*cos(2*pi*20*n)+3*sin(2*pi*40*n);
plot(t,x1)
hold on
plot(t,x3,'r')
stem(n,x2,'k')
stem(n,x4)
legend({'x1(t)','x2(t)','x1(n),x2(n)'})