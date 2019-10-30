t=0:10:15000;
pgcols=[81,92,95,96,97,98];
plot(t,X5(:,pgcols))
legend('Pg','Pg_FnII2','Pgx','Pgy','Pgxy','Pgx_FnII2')
xlabel('Time(sec)')
ylabel('Concentration (M)')
title('All PG Species')