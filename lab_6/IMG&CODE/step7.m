%step7
clear all
fs=10000; 
fs1=150; %設定取樣頻率1 kHz
B=500; %設定截止頻率
ts=1/fs;ts1=1/fs1;
t=-0.02:ts:0.02;t1=-0.02:ts1:0.02;
x=2*cos(2*pi*100*t)+3*sin(2*pi*200*t);
x1=2*cos(2*pi*100*t1)+3*sin(2*pi*200*t1);
for i=1:length(t) 
x11=x1.*2*B*ts1.*sinc(2*B*(t(i)-t1));
x2(i)=sum(x11);
end
subplot(1,2,1)
plot(t,x)
hold on
plot(t,x2,'r')
length(t)
length(x)
stem(t(1:(fs/fs1):401),x(1:(fs/fs1):401))
grid on
legend('原本訊號x1(t)','還原訊號xr2(t)')

%承接左圖
B=75; %設定截止頻率
ts=1/fs;ts1=1/fs1;
t=-0.02:ts:0.02;t1=-0.02:ts1:0.02;
x=2*cos(2*pi*100*t)+3*sin(2*pi*200*t);
x1=2*cos(2*pi*100*t1)+3*sin(2*pi*200*t1);
for i=1:length(t) 
x11=x1.*2*B*ts1.*sinc(2*B*(t(i)-t1));
x2(i)=sum(x11);
end
subplot(1,2,2)
plot(t,x)
hold on
plot(t,x2,'r')
grid on
legend('原本訊號x1(t)','還原訊號xr2(t)')

