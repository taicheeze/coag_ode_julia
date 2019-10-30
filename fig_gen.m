close all
X=csvread('./results_dump/test_june_14_1.csv');
plot_coag(X,'PCI binding @ 2000 1/(M*s), 0.5x AP, 35% APnc')
figure
X2=csvread('./results_dump/test_june_14_2.csv');
plot_coag(X2,'PCI binding @ 2000 1/(M*s), 1.0x AP, 35% APnc')
figure
X3=csvread('./results_dump/test_june_14_3.csv');
plot_coag(X3,'PCI binding @ 2000 1/(M*s), 1.5x AP, 35% APnc')
figure
X4=csvread('./results_dump/test_june_14_4.csv');
plot_coag(X4,'PCI binding @ 2000 1/(M*s), 2.0x AP, 35% APnc')