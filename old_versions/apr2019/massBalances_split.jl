include("calculateRates_split.jl")
function massBalances(t,y,dydt,data_dictionary)
	(r) = calculateRates(t,y,data_dictionary);
	dydt[1,1] = -r[1]+r[2]; # d/dt[ TF_VII ].
	dydt[2,1] = +r[1]-r[2]-r[5]-r[6]-r[7]; # d/dt[ VII ].
	dydt[3,1] = +r[1]-r[2]+r[3]-r[4]; # d/dt[ TF ].
	dydt[4,1] = -r[3]+r[4]+r[8]-r[9]+r[11]-r[12]+r[13]-r[14]+r[15]-r[38]-r[43]; # d/dt[ TF_VIIa ].
	dydt[5,1] = +r[3]-r[4]+r[5]+r[6]+r[7]; # d/dt[ VIIa ].
	dydt[6,1] = +r[11]-r[12]+r[22]+r[28]-r[29]+r[34]-r[35]-r[39]+r[66]-r[67]+r[68]-r[69]+r[77]+r[78]+r[79]+r[80]+r[88]-r[89]+r[94]+r[95]; # d/dt[ Xa ].
	dydt[7,1] = +r[16]+r[33]-r[42]+r[44]-r[45]+r[76]+r[77]+r[93]-r[100]+r[101]+r[102]-r[103]+r[104]+r[105]-r[108]+r[109]+r[110]-r[111]+r[112]; # d/dt[ IIa ].
	dydt[8,1] = -r[8]+r[9]-r[10]; # d/dt[ TF_VIIa_X ].
	dydt[9,1] = +r[8]-r[9]+r[20]-r[21]+r[25]-r[80]; # d/dt[ X ].
	dydt[10,1] = +r[10]-r[11]+r[12]+r[36]-r[37]; # d/dt[ TF_VIIa_Xa ].
	dydt[11,1] = -r[13]+r[14]-r[15]; # d/dt[ TF_VIIa_IX ].
	dydt[12,1] = +r[13]-r[14]; # d/dt[ IX ].
	dydt[13,1] = +r[15]+r[18]-r[19]+r[25]+r[26]-r[41]; # d/dt[ IXa ].
	dydt[14,1] = -r[16]+r[30]-r[31]+r[70]-r[71]+r[73]-r[74]+r[79]+r[90]-r[91]+r[95]+r[96]-r[97]; # d/dt[ II ].
	dydt[15,1] = -r[17]; # d/dt[ VIII ].
	dydt[16,1] = +r[17]+r[18]-r[19]+r[23]-r[24]; # d/dt[ VIIIa ].
	dydt[17,1] = -r[18]+r[19]+r[20]-r[21]+r[22]-r[26]; # d/dt[ IXa_VIIIa ].
	dydt[18,1] = -r[20]+r[21]-r[22]-r[25]; # d/dt[ IXa_VIIIa_X ].
	dydt[19,1] = -r[23]+r[24]+r[25]+r[26]; # d/dt[ VIIIlca1 ].
	dydt[20,1] = -r[23]+r[24]+r[25]+r[26]; # d/dt[ VIIIa2 ].
	dydt[21,1] = -r[27]-r[81]; # d/dt[ V ].
	dydt[22,1] = +r[27]+r[28]-r[29]+r[50]-r[51]+r[81]+r[96]-r[97]; # d/dt[ Va ].
	dydt[23,1] = -r[28]+r[29]+r[30]-r[31]+r[32]; # d/dt[ Xa_Va ].
	dydt[24,1] = -r[30]+r[31]-r[32]-r[79]; # d/dt[ Xa_Va_II ].
	dydt[25,1] = +r[32]-r[33]-r[40]+r[72]+r[75]-r[76]-r[77]+r[82]-r[83]+r[92]-r[93]; # d/dt[ mIIa ].
	dydt[26,1] = -r[34]+r[35]-r[38]; # d/dt[ Xa_TFPI ].
	dydt[27,1] = +r[34]-r[35]+r[36]-r[37]; # d/dt[ TFPI ].
	dydt[28,1] = -r[36]+r[37]+r[38]; # d/dt[ TF_VIIa_Xa_TFPI ].
	dydt[29,1] = -r[39]-r[40]-r[41]-r[42]-r[43]-r[49]-r[87]-r[113]-r[114]-r[115]; # d/dt[ ATIII ].
	dydt[30,1] = +r[39]; # d/dt[ Xa_ATIII ].
	dydt[31,1] = +r[40]+r[87]; # d/dt[ mIIa_ATIII ].
	dydt[32,1] = +r[41]; # d/dt[ IXa_ATIII ].
	dydt[33,1] = +r[42]+r[49]; # d/dt[ IIa_ATIII ].
	dydt[34,1] = +r[43]; # d/dt[ TF_VIIa_ATIII ].
	dydt[35,1] = -r[44]+r[45]+r[46]-r[47]+r[48]-r[49]+r[64]-r[65]; # d/dt[ TM_IIa ].
	dydt[36,1] = +r[44]-r[45]+r[49]+r[82]-r[83]+r[87]; # d/dt[ TM ].
	dydt[37,1] = -r[46]+r[47]-r[48]; # d/dt[ TM_IIa_PC ].
	dydt[38,1] = +r[46]-r[47]+r[84]-r[85]; # d/dt[ PC ].
	dydt[39,1] = +r[48]+r[50]-r[51]+r[52]+r[53]+r[54]-r[55]+r[56]-r[57]+r[58]+r[59]+r[62]-r[63]+r[64]-r[65]+r[86]-r[99]-r[123]; # d/dt[ APC ].
	dydt[40,1] = -r[50]+r[51]-r[52]-r[53]; # d/dt[ APC_Va ].
	dydt[41,1] = +r[52]+r[54]-r[55]+r[66]-r[67]; # d/dt[ Va5 ].
	dydt[42,1] = +r[53]+r[56]-r[57]-r[60]+r[68]-r[69]+r[77]; # d/dt[ Va3 ].
	dydt[43,1] = -r[54]+r[55]-r[59]; # d/dt[ APC_Va5 ].
	dydt[44,1] = -r[56]+r[57]-r[58]; # d/dt[ APC_Va3 ].
	dydt[45,1] = +r[58]+r[59]-r[61]+r[88]-r[89]; # d/dt[ Va53 ].
	dydt[46,1] = +r[60]+r[61]+r[78]+r[79]+r[95]; # d/dt[ HCF ].
	dydt[47,1] = +r[60]+r[61]+r[62]-r[63]+r[78]+r[79]+r[95]; # d/dt[ rateLCA1 ].
	dydt[48,1] = -r[62]+r[63]; # d/dt[ APC_LCA1 ].
	dydt[49,1] = -r[64]+r[65]; # d/dt[ TM_IIa_APC ].
	dydt[50,1] = -r[66]+r[67]+r[70]-r[71]+r[72]-r[98]; # d/dt[ Xa_Va5 ].
	dydt[51,1] = -r[68]+r[69]+r[73]-r[74]+r[75]-r[77]-r[78]; # d/dt[ Xa_Va3 ].
	dydt[52,1] = -r[70]+r[71]-r[72]; # d/dt[ Xa_Va5_II ].
	dydt[53,1] = -r[73]+r[74]-r[75]; # d/dt[ Xa_Va3_II ].
	dydt[54,1] = -r[82]+r[83]+r[84]-r[85]+r[86]-r[87]; # d/dt[ TM_mIIa ].
	dydt[55,1] = -r[84]+r[85]-r[86]; # d/dt[ TM_mIIa_PC ].
	dydt[56,1] = -r[88]+r[89]+r[90]-r[91]+r[92]-r[94]+r[98]; # d/dt[ Xa_Va53 ].
	dydt[57,1] = -r[90]+r[91]-r[92]-r[95]; # d/dt[ Xa_Va53_II ].
	dydt[58,1] = +r[94]; # d/dt[ HCF_LCA1 ].
	dydt[59,1] = -r[96]+r[97]; # d/dt[ II_Va ].
	dydt[60,1] = -r[100]+r[101]-r[161]; # d/dt[ Fg ].
	dydt[61,1] = +r[100]-r[101]-r[102];; # d/dt[ Fg_IIa ].
	dydt[62,1] = +r[102]-r[103]+r[104]-2*r[106]+2*r[107]-r[155]+r[159]; # d/dt[ FnI ].
	dydt[63,1] = +r[102]; # d/dt[ FPA ].
	dydt[64,1] = +r[103]-r[104]-r[105]-r[114]; # d/dt[ FnI_IIa ].
	dydt[65,1] = +r[105]-r[111]+r[112]-r[117]+r[120]-r[136]+r[138]-r[150]+r[152]; # d/dt[ FnII ].
	dydt[66,1] = +r[105]+2*r[110]; # d/dt[ FPB ].
	dydt[67,1] = +r[106]-r[107]-r[108]+r[109]-r[156]+r[160]; # d/dt[ FnI2 ].
	dydt[68,1] = +r[108]-r[109]-r[110]-r[113]; # d/dt[ FnI2_IIa ].
	dydt[69,1] = +r[110]-r[118]+r[135]-r[137]+r[139]-r[151]+r[153]-r[154]; # d/dt[ FnII2 ].
	dydt[70,1] = +r[111]-r[112]-r[115]; # d/dt[ FnII_IIa ].
	dydt[71,1] = +r[113]; # d/dt[ FnI2_IIa_ATIII ].
	dydt[72,1] = +r[114]; # d/dt[ FnI_IIa_ATIII ].
	dydt[73,1] = +r[115]; # d/dt[ FnII_IIa_ATIII ].
	dydt[74,1] = -r[116]+r[128]+r[121]+r[122]-r[133]+r[134]-r[150]-r[151]+r[152]+r[153]-r[155]-r[156]+r[157]+r[158]+r[159]+r[160]; # d/dt[ Pn ].
	dydt[75,1] = -r[116]; # d/dt[ AP ].
	dydt[76,1] = +r[116]; # d/dt[ Pn_AP ].
	dydt[77,1] = +r[121]+2*r[122]+2*r[154]-r[157]-r[158]+r[161]; # d/dt[ FDP ].
	dydt[78,1] = -r[119]+r[126]+r[127]-r[117]-r[118]+r[120]+r[135]-r[144]-r[145]+r[146]+r[147]+r[148]+r[149]; # d/dt[ stPA ].
	dydt[79,1] = -r[119]-r[123]-r[132]; # d/dt[ PAI ].
	dydt[80,1] = +r[119]; # d/dt[ stPA_PAI ].
	dydt[81,1] = -r[128]-r[130]+r[131]-r[136]-r[137]+r[138]+r[139]-r[140]-r[141]+r[142]+r[143]; # d/dt[ Pg ].
	dydt[82,1] = +r[124]-r[125]-r[126]; # d/dt[ artPA ].
	dydt[83,1] = -r[127]; # d/dt[ ictPA ].
	dydt[84,1] = -r[132]; # d/dt[ uPa ].
	dydt[85,1] = -r[129]+r[130]-r[131]; # d/dt [ Pg_TXA ]
	dydt[86,1] = -r[130]+r[131]-r[133]+r[134]; # d/dt [ TXA ]
	dydt[87,1] = +r[132]; # d/dt[ uPa_PAI ].
	dydt[88,1] = +r[129]+r[133]-r[134] # d/dt [ Pn_TXA ]
	dydt[89,1] = +r[117]-r[120]-r[140]+r[142]; # d/dt[ stPA_FnII ].
	dydt[90,1] = +r[118]-r[135]-r[141]+r[143]; # d/dt[ stPA_FnII2 ].
	dydt[91,1] = +r[136]-r[138]-r[144]+r[146]; # d/dt[ Pg_FnII ].
	dydt[92,1] = +r[137]-r[139]-r[145]+r[147]; # d/dt[ Pg_FnII2 ].
	dydt[93,1] = +r[140]-r[142]+r[144]-r[146]-r[148]; # d/dt[ stPA_Pg_FnII ].
	dydt[94,1] = +r[141]-r[143]+r[145]-r[147]-r[149]; # d/dt[ stPA_Pg_FnII2 ].
	dydt[95,1] = -r[121]+r[148]+r[150]-r[152]; # d/dt [ Pn_FnII ]
	dydt[96,1] = -r[122]+r[149]+r[151]-r[153]; # d/dt [ Pn_FnII2 ]
	dydt[97,1] = +r[155]-r[157]-r[159]; # d/dt [ Pn_FnI ]
	dydt[98,1] = +r[156]-r[158]-r[160]; # d/dt [ Pn_FnI2 ]
end
