
clear, clc

load CBF_meas.mat
fs=200; Ts=1/fs;

cbf=signals.cbf;
ecg=signals.ecg;
bp=signals.bp;
co2=signals.co2;
hp=signals.hp;
mf=signals.mf;
brab=signals.brab;

N=length(cbf);
time=linspace(0,(N-1)*Ts,N);

plot(time,cbf)
hold on
plot(time,ecg)

%% ===========================
N=fs*570;
cbf=cbf(1:N); cbf=cbf-mean(cbf); cbf=cbf./var(cbf);
ecg=ecg(1:N); ecg=ecg-mean(ecg); ecg=ecg./var(ecg);
time=time(1:N);

plot(time,cbf)
hold on
plot(time,ecg)

