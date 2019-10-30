function plot_coag(X,chart_name)
t=0:10:15000;
plot(t,X, 'LineWidth', 2)
xlabel('time(sec)')
ylabel('Fibrin Concentration (M)')
legend('no TXA','1然 TXA','3然 TXA', '14然 TXA','54然 TXA', '3.47mM TXA')
title(chart_name)
end