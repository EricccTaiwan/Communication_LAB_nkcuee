%step2
clear all
fs=80; %設定取樣頻率為80Hz
fs1=8000; %設定另一個極高的取樣頻率
ts=1/fs;
ts1=1/fs1;
t=0:ts:0.08;
n=0:ts1:0.08;
x1=2*cos(2*pi*100*n)+3*sin(2*pi*120*n); %以極高取樣頻率來近似原本連續訊號
x2=2*cos(2*pi*100*t)+3*sin(2*pi*120*t); %取樣後的訊號
subplot(211)
plot(n,x1);
grid on
subplot(212)
stem(t,x2,'r')
grid on