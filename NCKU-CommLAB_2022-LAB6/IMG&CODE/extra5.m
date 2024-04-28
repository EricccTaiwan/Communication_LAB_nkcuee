clear all
fs = 10000;
fs1 = 1000; %設定取樣頻率 1k Hz
B = 200; %設定截止頻率B
ts = 1/fs;
ts1 = 1/fs1;
t = -0.02:ts:0.02;
t1 = -0.02:ts1:0.02;
x = 3*cos(2*pi*100*t)+2*sin(2*pi*50*t);
x1 = 3*cos(2*pi*100*t1)+2*sin(2*pi*50*t1);
for i = 1:length(t) %i分成length(i)段 每次i++ 這裡為1 2 3 ... ~ 401
    x11 = x1.*2*B*ts1.*sinc(2*B*(t(i)-t1));
    x2(i) = sum(x11);
end
plot(t,x,'b')
hold on
grid on
plot(t,x2,'r')
legend('x(t)','x[n]')
grid on