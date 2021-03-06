function initialConditions(size,TXA=0e-4;)
y=zeros(size);
per_AP=0.35;
tot_AP=1e-6; #default 1e-6
y[2]=1e-8; #VII
y[3]=5e-12; #TF original value 5e-12
y[5]=1e-10; #VIIa
#y[7]=1e-9; #IIa default =0
y[9]=1.6e-7; #X
y[12]=9e-8; #IX
y[14]=1.4e-6; #II
y[15]=7e-10; #VIII
y[21]=2e-8; #V
y[27]=2.5e-9; #TFPI
y[29]=3.4e-6; #ATIII
y[36]=1e-9; #TM
y[38]=6.5e-8; #PC
y[60]=9e-6; #FG
y[74]=0e-7; #Pn
y[75]=(1-per_AP)*tot_AP; #AP def 1e-6
y[78]=2.5e-9; #stpa def. 5e-11
y[79]=5e-11; #PAI
y[81]=2e-6; #PG
y[84]=5e-9; #uPa
y[86]=TXA; #TXA #636 uM default.
y[103]=90e-9; #PCI default 90e-9
y[104]=per_AP*tot_AP;
y[105]=0e-6; #a2mg default 3.4e-6
y[106]=0e-6; #a1at/a1pi default 35e-6
return y
end
