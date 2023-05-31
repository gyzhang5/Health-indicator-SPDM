close all;
clear;
clc;

load 'NASA_HIs.mat';
Kurtosis = HIs(1, :);
RMS = HIs(2, :);
% Health indicator constructed based on the signal probability distribution
% measures (SPDM) in our recent paper:
% G. Zhang, et al., Health indicator based on signal probability distribution measures
% for machinery condition monitoring, Mech. Syst. Sig. Process. 198 (2023) 110460
SPDM = HIs(3, :);

index = 1 : 984;

figure;
plot(index, Kurtosis, 'b');
xlabel('Time (×10min)');
ylabel('Kurtosis');
set(gca,'FontName','Times new roman');

figure;
plot(index, RMS, 'b');
xlabel('Time (×10min)');
ylabel('RMS');
set(gca,'FontName','Times new roman');

figure;
plot(index, SPDM, 'b');
xlabel('Time (×10min)');
ylabel('SPDM');
set(gca,'FontName','Times new roman');