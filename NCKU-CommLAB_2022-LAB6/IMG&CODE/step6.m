%step6
clear all;close all
fs=10000; 
fs1=1000; %設定取樣頻率1 kHz
B=500; %設定截止頻率
ts=1/fs;ts1=1/fs1;
t=-0.02:ts:0.02;t1=-0.02:ts1:0.02;
x=2*cos(2*pi*100*t)+3*sin(2*pi*200*t);
x1=2*cos(2*pi*100*t1)+3*sin(2*pi*200*t1);
for i=1:length(t) 
x11=x1.*2*B*ts1.*sinc(2*B*(t(i)-t1));
x2(i)=sum(x11);
end
plot(t,x)
hold on
plot(t,x2,'r')
grid on
