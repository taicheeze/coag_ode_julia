using MAT
using Sundials
include("massBalances_split.jl")
include("initialConditions.jl")

function check_fun(params)
        vars["constants"][128]=params[2]*params[1]; #upa activation of plasmin w/ TXA default 1.85
        vars["constants"][129]=params[1]; #upa activation of plasmin w/o TXA_vals default .73
        vars["constants"][130]=params[3]*1e2; #TXA binding to PG default 1e2
        vars["constants"][131]=params[8]*1e-6*vars["constants"][130]; #TXA unbinding to PG Kd default 1.1
        vars["constants"][133]=params[4]*1e2; #TXA binding to PN default
        vars["constants"][134]=params[9]*1e-3*vars["constants"][133]; #TXA unbinding to PN Kd default 4.5, constant default 1e-5
        vars["constants"][121]=params[5]; #rate of plasmin degradation of FnII
        vars["constants"][122]=params[5]; #rate of plasmin degradation of FnII2
        vars["constants"][150]=params[6]*1e5; #rate of plasmin binding to FnII
        vars["constants"][151]=params[6]*1e5; #rate of plasmin binding to FnII2
        vars["constants"][152]=params[7]*1e-6*vars["constants"][151]; #rate of plasmin unbinding
        vars["constants"][153]=params[7]*1e-6*vars["constants"][151];

        TXA_vals=[0,6.36e-9,6.36e-8,6.36e-7] #,6.36e-6,6.36e-5,6.36e-4,6.36e-3]
        norm_MCF=Array{Float64,1}(0);
        ly30_array=Array{Float64,1}(0);
        TSIM = collect(0:10:5000);
        TSIM = convert(Array{Float64}, TSIM)
        X=0;
        base_MCF=1;
        for i=1:length(TXA_vals)
            y = initialConditions(96,TXA_vals[i]);
            problem(t,y,ydot) = massBalances(t,y,ydot,vars);
            X = Sundials.cvode(problem,y,TSIM,reltol=1e-6,abstol=1e-18);
            temp_name="testfile_$i.csv"
            writecsv(temp_name,X);
            MCF=maximum(X[:,69]);

            if i==1
                base_MCF=MCF;
            end

            MCF_ind=find(a->a==MCF,X[:,69]);
            if MCF_ind[1]>501-180
                ly30=0;
            else
                ly30=100*(1-(MCF-X[MCF_ind[1]+180,69])/MCF);
            end
            append!(norm_MCF,MCF);
            append!(ly30_array,ly30);
        end
        norm_MCF=norm_MCF/base_MCF;
        return(norm_MCF,ly30_array)
end
