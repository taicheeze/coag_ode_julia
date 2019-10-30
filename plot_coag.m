function plot_coag(X,chart_name)
t=0:10:15000;
plot(t,X, 'LineWidth', 2)
xlabel('time(sec)')
ylabel('Fibrin Concentration (M)')
legend('no TXA','1�M TXA','3�M TXA', '14�M TXA','54�M TXA', '3.47mM TXA')
title(chart_name)
end