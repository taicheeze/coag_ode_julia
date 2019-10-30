function plot_pncols(X)
    t=0:10:15000;
    pncols=[74,94,99,101,102,100,76];
    plot(t,X(:,pncols),t,sum(X(:,pncols),2))
    legend('Pn','Pn_FnII2','Pnx','Pnx_FnII2','Pnz','Pnxz','Pn_AP','Sum')
    title('All PN Species')
    xlabel('Time(sec)')
    ylabel('Concentration (M)')
    figure
    pncols=[74,94,99,101];
    plot(t,X(:,pncols))
    legend('Pn','Pn_FnII2','Pnx','Pnx_FnII2')
    xlabel('Time(sec)')
    ylabel('Concentration (M)')
    title('Active PN Species')
end