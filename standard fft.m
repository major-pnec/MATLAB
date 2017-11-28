% �������������: �������� ���������
% �.�.: 1046895
% ����: 3�
clear;
close all;
clc;



%Variables
fs = Fs;
Ts = 1/fs;
t = 0:Ts:1-Ts;
N = 2^nextpow2(fs); %or length(sig)

f = (0:N/2) * fs/N;

%Signals
x = ;
X = fft(x,N);
X = X(1:N/2+1); %Positive Spectrum

%Plots;
subplot(2,1,1)
plot(t,x);
title('���� ��� ����� ������');
grid on;

subplot(2,1,2)
stem(f,abs(X));
title('����� ������� �������� ����� �������');
grid on;