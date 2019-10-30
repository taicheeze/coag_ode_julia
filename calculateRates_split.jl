function calculateRates(t,y,data_dictionary)
	Kvalues=data_dictionary["constants"];
	RxnRates=Array{Float64,1}(undef,161);
	RxnRates[1,1]=Kvalues[1]*y[1]; 		# r[1] = k1*TF_VII
	RxnRates[2,1]=Kvalues[2]*y[3]*y[2]; 		# r[2] = k2*TF*VII
	RxnRates[3,1]=Kvalues[3]*y[4]; 		# r[3] = k3*TF_VIIa
	RxnRates[4,1]=Kvalues[4]*y[3]*y[5]; 		# r[4] = k4*TF*VIIa
	RxnRates[5,1]=Kvalues[5]*y[4]*y[2]; 		# r[5] = k5*TF_VIIa*VII
	RxnRates[6,1]=Kvalues[6]*y[6]*y[2]; 		# r[6] = k6*Xa*VII
	RxnRates[7,1]=Kvalues[7]*y[7]*y[2]; 		# r[7] = k7*IIa*VII
	RxnRates[8,1]=Kvalues[8]*y[8]; 		# r[8] = k8*TF_VIIa_X
	RxnRates[9,1]=Kvalues[9]*y[4]*y[9]; 		# r[9] = k9*TF_VIIa*X
	RxnRates[10,1]=Kvalues[10]*y[8]; 		# r[10] = k10*TF_VIIa_X
	RxnRates[11,1]=Kvalues[11]*y[10]; 		# r[11] = k11*TF_VIIa_Xa
	RxnRates[12,1]=Kvalues[12]*y[4]*y[6]; 		# r[12] = k12*TF_VIIa*Xa
	RxnRates[13,1]=Kvalues[13]*y[11]; 		# r[13] = k13*TF_VIIa_IX
	RxnRates[14,1]=Kvalues[14]*y[4]*y[12]; 		# r[14] = k14*TF_VIIa*IX
	RxnRates[15,1]=Kvalues[15]*y[11]; 		# r[15] = k15*TF_VIIa_IX
	RxnRates[16,1]=Kvalues[16]*y[6]*y[14]; 		# r[16] = k16*Xa*II
	RxnRates[17,1]=Kvalues[17]*y[7]*y[15]; 		# r[17] = k17*IIa*VIII
	RxnRates[18,1]=Kvalues[18]*y[17]; 		# r[18] = k18*IXa_VIIIa
	RxnRates[19,1]=Kvalues[19]*y[16]*y[13]; 		# r[19] = k19*VIIIa*IXa
	RxnRates[20,1]=Kvalues[20]*y[18]; 		# r[20] = k20*IXa_VIIIa_X
	RxnRates[21,1]=Kvalues[21]*y[17]*y[9]; 		# r[21] = k21*IXa_VIIIa*X
	RxnRates[22,1]=Kvalues[22]*y[18]; 		# r[22] = k22*IXa_VIIIa_X
	RxnRates[23,1]=Kvalues[23]*y[19]*y[20]; 		# r[23] = k23*VIIIlca1*VIIIa2
	RxnRates[24,1]=Kvalues[24]*y[16]; 		# r[24] = k24*VIIIa
	RxnRates[25,1]=Kvalues[25]*y[18]; 		# r[25] = k25*IXa_VIIIa_X
	RxnRates[26,1]=Kvalues[26]*y[17]; 		# r[26] = k25*IXa_VIIIa
	RxnRates[27,1]=Kvalues[27]*y[7]*y[21]; 		# r[27] = k26*IIa*V
	RxnRates[28,1]=Kvalues[28]*y[23]; 		# r[28] = k27*Xa_Va
	RxnRates[29,1]=Kvalues[29]*y[6]*y[22]; 		# r[29] = k28*Xa*Va
	RxnRates[30,1]=Kvalues[30]*y[24]; 		# r[30] = k29*Xa_Va_II
	RxnRates[31,1]=Kvalues[31]*y[23]*y[14]; 		# r[31] = k30*Xa_Va*II
	RxnRates[32,1]=Kvalues[32]*y[24]; 		# r[32] = k31*Xa_Va_II
	RxnRates[33,1]=Kvalues[33]*y[25]*y[23]; 		# r[33] = k32*mIIa*Xa_Va
	RxnRates[34,1]=Kvalues[34]*y[26]; 		# r[34] = k33*Xa_TFPI
	RxnRates[35,1]=Kvalues[35]*y[6]*y[27]; 		# r[35] = k34*Xa*TFPI
	RxnRates[36,1]=Kvalues[36]*y[28]; 		# r[36] = k35*TF_VIIa_Xa_TFPI
	RxnRates[37,1]=Kvalues[37]*y[10]*y[27]; 		# r[37] = k36*TF_VIIa_Xa*TFPI
	RxnRates[38,1]=Kvalues[38]*y[4]*y[26]; 		# r[38] = k37*TF_VIIa*Xa_TFPI
	RxnRates[39,1]=Kvalues[39]*y[6]*y[29]; 		# r[39] = k38*Xa*ATIII
	RxnRates[40,1]=Kvalues[40]*y[25]*y[29]; 		# r[40] = k39*mIIa*ATIII
	RxnRates[41,1]=Kvalues[41]*y[13]*y[29]; 		# r[41] = k40*IXa*ATIII
	RxnRates[42,1]=Kvalues[42]*y[7]*y[29]; 		# r[42] = k41*IIa*ATIII
	RxnRates[43,1]=Kvalues[43]*y[4]*y[29]; 		# r[43] = k42*TF_VIIa*ATIII
	RxnRates[44,1]=Kvalues[44]*y[35]; 		# r[44] = k43*TM_IIa
	RxnRates[45,1]=Kvalues[45]*y[36]*y[7]; 		# r[45] = k44*TM*IIa
	RxnRates[46,1]=Kvalues[46]*y[37]; 		# r[46] = k45*TM_IIa_PC
	RxnRates[47,1]=Kvalues[47]*y[35]*y[38]; 		# r[47] = k46*TM_IIa*PC
	RxnRates[48,1]=Kvalues[48]*y[37]; 		# r[48] = k47*TM_IIa_PC
	RxnRates[49,1]=Kvalues[49]*y[35]*y[29]; 		# r[49] = k48*TM_IIa*ATIII
	RxnRates[50,1]=Kvalues[50]*y[40]; 		# r[50] = k49*APC_Va
	RxnRates[51,1]=Kvalues[51]*y[39]*y[22]; 		# r[51] = k50*APC*Va
	RxnRates[52,1]=Kvalues[52]*y[40]; 		# r[52] = k51*APC_Va
	RxnRates[53,1]=Kvalues[53]*y[40]; 		# r[53] = k52*APC_Va
	RxnRates[54,1]=Kvalues[54]*y[43]; 		# r[54] = k49*APC_Va5
	RxnRates[55,1]=Kvalues[55]*y[39]*y[41]; 		# r[55] = k50*APC*Va5
	RxnRates[56,1]=Kvalues[56]*y[44]; 		# r[56] = k49*APC_Va3
	RxnRates[57,1]=Kvalues[57]*y[39]*y[42]; 		# r[57] = k50*APC*Va3
	RxnRates[58,1]=Kvalues[58]*y[44]; 		# r[58] = k51*APC_Va3
	RxnRates[59,1]=Kvalues[59]*y[43]; 		# r[59] = k52*APC_Va5
	RxnRates[60,1]=Kvalues[60]*y[42]; 		# r[60] = k53*Va3
	RxnRates[61,1]=Kvalues[61]*y[45]; 		# r[61] = k53*Va53
	RxnRates[62,1]=Kvalues[62]*y[48]; 		# r[62] = k49*APC_LCA1
	RxnRates[63,1]=Kvalues[63]*y[39]*y[47]; 		# r[63] = k50*APC*LCA1
	RxnRates[64,1]=Kvalues[64]*y[49]; 		# r[64] = k45*TM_IIa_APC
	RxnRates[65,1]=Kvalues[65]*y[39]*y[35]; 		# r[65] = k46*APC*TM_IIa
	RxnRates[66,1]=Kvalues[66]*y[50]; 		# r[66] = k54*Xa_Va5
	RxnRates[67,1]=Kvalues[67]*y[6]*y[41]; 		# r[67] = k28*Xa*Va5
	RxnRates[68,1]=Kvalues[68]*y[51]; 		# r[68] = k54*Xa_Va3
	RxnRates[69,1]=Kvalues[69]*y[6]*y[42]; 		# r[69] = k28*Xa*Va3
	RxnRates[70,1]=Kvalues[70]*y[52]; 		# r[70] = k29*Xa_Va5_II
	RxnRates[71,1]=Kvalues[71]*y[50]*y[14]; 		# r[71] = k30*Xa_Va5*II
	RxnRates[72,1]=Kvalues[72]*y[52]; 		# r[72] = k55*Xa_Va5_II
	RxnRates[73,1]=Kvalues[73]*y[53]; 		# r[73] = k29*Xa_Va3_II
	RxnRates[74,1]=Kvalues[74]*y[51]*y[14]; 		# r[74] = k30*Xa_Va3*II
	RxnRates[75,1]=Kvalues[75]*y[53]; 		# r[75] = k56*Xa_Va3_II
	RxnRates[76,1]=Kvalues[76]*y[50]*y[25]; 		# r[76] = k57*Xa_Va5*mIIa
	RxnRates[77,1]=Kvalues[77]*y[51]*y[25]; 		# r[77] = k58*Xa_Va3*mIIa
	RxnRates[78,1]=Kvalues[78]*y[51]; 		# r[78] = k59*Xa_Va3
	RxnRates[79,1]=Kvalues[79]*y[24]; 		# r[79] = k59*Xa_Va_II
	RxnRates[80,1]=Kvalues[80]*y[13]*y[9]; 		# r[80] = k60*IXa*X
	RxnRates[81,1]=Kvalues[81]*y[25]*y[21]; 		# r[81] = k61*mIIa*V
	RxnRates[82,1]=Kvalues[82]*y[54]; 		# r[82] = k43*TM_mIIa
	RxnRates[83,1]=Kvalues[83]*y[36]*y[25]; 		# r[83] = k44*TM*mIIa
	RxnRates[84,1]=Kvalues[84]*y[55]; 		# r[84] = k45*TM_mIIa_PC
	RxnRates[85,1]=Kvalues[85]*y[54]*y[38]; 		# r[85] = k46*TM_mIIa*PC
	RxnRates[86,1]=Kvalues[86]*y[55]; 		# r[86] = k47*TM_mIIa_PC
	RxnRates[87,1]=Kvalues[87]*y[54]*y[29]; 		# r[87] = k48*TM_mIIa*ATIII
	RxnRates[88,1]=Kvalues[88]*y[56]; 		# r[88] = k54*Xa_Va53
	RxnRates[89,1]=Kvalues[89]*y[6]*y[45]; 		# r[89] = k28*Xa*Va53
	RxnRates[90,1]=Kvalues[90]*y[57]; 		# r[90] = k29*Xa_Va53_II
	RxnRates[91,1]=Kvalues[91]*y[56]*y[14]; 		# r[91] = k30*Xa_Va53*II
	RxnRates[92,1]=Kvalues[92]*y[57]; 		# r[92] = k56*Xa_Va53_II
	RxnRates[93,1]=Kvalues[93]*y[56]*y[25]; 		# r[93] = k58*Xa_Va53*mIIa
	RxnRates[94,1]=Kvalues[94]*y[56]; 		# r[94] = k59*Xa_Va53
	RxnRates[95,1]=Kvalues[95]*y[57]; 		# r[95] = k59*Xa_Va53_II
	RxnRates[96,1]=Kvalues[96]*y[59]; 		# r[96] = k62*II_Va
	RxnRates[97,1]=Kvalues[97]*y[14]*y[22]; 		# r[97] = k63*II*Va
	RxnRates[98,1]=Kvalues[98]*y[50]*y[39]; 		# r[98] = k64*Xa_Va5*APC
	RxnRates[99,1]=Kvalues[99]*y[39]; 		# r[99] = k65*APC
	RxnRates[100,1]=Kvalues[100]*y[60]*y[7]; 		# r[100] = k67*Fg*IIa
	RxnRates[101,1]=Kvalues[101]*y[61]; 		# r[101] = k66*Fg_IIa
	RxnRates[102,1]=Kvalues[102]*y[61]; 		# r[102] = k68*Fg_IIa
	RxnRates[103,1]=Kvalues[103]*y[62]*y[7]; 		# r[103] = k69*FnI*IIa
	RxnRates[104,1]=Kvalues[104]*y[64]; 		# r[104] = k67*FnI_IIa
	RxnRates[105,1]=Kvalues[105]*y[64]; 		# r[105] = k70*FnI_IIa
	RxnRates[106,1]=Kvalues[106]*y[62]^2; 		# r[106] = k72*FnI
	RxnRates[107,1]=Kvalues[107]*y[67]; 		# r[107] = k71*FnI2
	RxnRates[108,1]=Kvalues[108]*y[67]*y[7]; 		# r[108] = k67*FnI2*IIa
	RxnRates[109,1]=Kvalues[109]*y[68]; 		# r[109] = k69*FnI2_IIa
	RxnRates[110,1]=Kvalues[110]*y[68]; 		# r[110] = k73*FnI2_IIa
	RxnRates[111,1]=Kvalues[111]*y[65]*y[7]; 		# r[111] = k67*FnII*IIa
	RxnRates[112,1]=Kvalues[112]*y[70]; 		# r[112] = k74*FnII_IIa
	RxnRates[113,1]=Kvalues[113]*y[68]*y[29]; 		# r[113] = k75*FnI2_IIa*ATIII
	RxnRates[114,1]=Kvalues[114]*y[64]*y[29]; 		# r[114] = k75*FnI_IIa*ATIII
	RxnRates[115,1]=Kvalues[115]*y[70]*y[29]; 		# r[115] = k76*FnII_IIa*ATIII
	RxnRates[116,1]=Kvalues[116]*y[74]*y[75]; 		# r[116] = k77*Pn*AP
	RxnRates[117,1]=Kvalues[117]*y[78]*y[65]; 		# r[117] = stpa*FnII
	RxnRates[118,1]=Kvalues[118]*y[78]*y[69]; 		# r[118] = stpa*FnII2
	RxnRates[119,1]=Kvalues[119]*y[78]*y[79]; 		# r[119] = k78*stPA*PAI
	RxnRates[120,1]=Kvalues[120]*y[89]; 		# r[120] = k68*stPA_FnII
	RxnRates[121,1]=Kvalues[121]*y[95]; 		# r[121] = Pn_FnII degradation of FnII
	RxnRates[122,1]=Kvalues[122]*(4.5e-6-y[69])*y[96]/4.5e-6; 		# r[122] = k81*Pn_FnII2 degradation of FnII2
	RxnRates[123,1]=Kvalues[123]*y[79]*y[39]; 		# r[123] = k81*PAI*APC
	RxnRates[124,1]=Kvalues[124]; 		# r[124] = k83 artpa production
	RxnRates[125,1]=Kvalues[125]*y[82]; 		# r[125] = k84*artPA
	RxnRates[126,1]=Kvalues[126]*y[82]; 		# r[126] = k82*artPA artpa release
	RxnRates[127,1]=Kvalues[127]*y[83]; 		# r[127] = k85*ictPA
	RxnRates[128,1]=Kvalues[128]*y[81]*y[84]/(2.5e-5+y[81]);	 # upa activation of Pg, decreases plasminogen, increases plasmin
	RxnRates[129,1]=Kvalues[129]*y[85]*y[84]/(2.5e-5+y[85]);	# upa activation of Pg_TXA, decreases Pg_TXA, increases plasmin and TXA
	RxnRates[130,1]=Kvalues[130]*y[81]*y[86];			# binding of TXA to Pg, decreases TXA and Pg, increases Pg_TXA
	RxnRates[131,1]=Kvalues[131]*y[85]; 				# unbinding of Pg_TXA, decreases Pg_TXA, increases TXA and Pg
	RxnRates[132,1]=Kvalues[132]*y[84]*y[79];				#PAI-1 and uPA binding, decreases PAI-1 and uPA
	RxnRates[133,1]=Kvalues[133]*y[74]*y[86];			# binding of TXA to Pn, decreases TXA and Pn, increases Pn_TXA
	RxnRates[134,1]=Kvalues[134]*y[88]; 				# unbinding of Pn_TXA, decreases Pn_TXA, increases TXA and Pn
	RxnRates[135,1]=Kvalues[135]*y[90]; 		# r[135] = k69*stPA_FnII2
	RxnRates[136,1]=Kvalues[136]*y[81]*y[65]; 		# r[136] = k67*Pg*FnII
	RxnRates[137,1]=Kvalues[137]*y[81]*y[69]; 		# r[137] = k70*Pg*FnII2
	RxnRates[138,1]=Kvalues[138]*y[91]; 		# r[138] = k72*Pg_FnII
	RxnRates[139,1]=Kvalues[139]*y[92]; 		# r[139] = k71*Pg_FnII2
	RxnRates[140,1]=Kvalues[140]*y[89]*y[81]; 		# r[140] = k67*stPA_FnII*Pg
	RxnRates[141,1]=Kvalues[141]*y[90]*y[81]; 		# r[141] = k69*stPA_FnII2*Pg
	RxnRates[142,1]=Kvalues[142]*y[93]; 		# r[142] = k73*stPA_Pg_FnII
	RxnRates[143,1]=Kvalues[143]*y[94]; 		# r[143] = k67*stPA_Pg_FnII2
	RxnRates[144,1]=Kvalues[144]*y[91]*y[78]; 		# r[144] = k74*Pg_FnII*stPA
	RxnRates[145,1]=Kvalues[145]*y[92]*y[78]; 		# r[145] = k75*Pg_FnII2*stPA
	RxnRates[146,1]=Kvalues[146]*y[93]; 		# r[146] = k73*stPA_Pg_FnII
	RxnRates[147,1]=Kvalues[147]*y[94]; 		# r[147] = k67*stPA_Pg_FnII2
	RxnRates[148,1]=Kvalues[148]*y[93]; 		# r[148] = k73*stPA_Pg_FnII forms plasmin
	RxnRates[149,1]=Kvalues[149]*y[94]; 		# r[149] = k67*stPA_Pg_FnII2 forms plasmin
	RxnRates[150,1]=Kvalues[150]*y[65]*y[74];		# r[150] = k79*FnII*Pn
	RxnRates[151,1]=Kvalues[151]*y[69]*y[74]; 		# r[151] = k78*FnII2*Pn
	RxnRates[152,1]=Kvalues[152]*y[95]; 		# r[152] = k80*Pn_FnII
	RxnRates[153,1]=Kvalues[153]*y[96]; 		# r[153] = k90*Pn_FnII2
	RxnRates[154,1]=Kvalues[122]*y[96]*y[69]/4.5e-6;	# r[154] = k*Pn_FnII2*FnII2
	#reactions added jan 30th
	RxnRates[155,1]=Kvalues[150]*y[62]*y[74];		# r[150] = k79*FnII*Pn
	RxnRates[156,1]=Kvalues[151]*y[67]*y[74]; 		# r[151] = k78*FnII2*Pn
	RxnRates[157,1]=Kvalues[121]*y[95]; 		# r[121] = Pn_FnI degradation of FnI
	RxnRates[158,1]=Kvalues[121]*y[95]; 		# r[121] = Pn_FnI2 degradation of FnI2
	RxnRates[159,1]=Kvalues[152]*y[95]; 		# r[152] = k80*Pn_FnI unbinding of plasmin and FnI
	RxnRates[160,1]=Kvalues[153]*y[96]; 		# r[153] = k90*Pn_FnI2 unbinding of plasmin and FnI2
	#reactions added feb 8th
	RxnRates[161,1]=Kvalues[154]*y[74]*y[60]; #fibrinogenolysis
	return RxnRates;
end
