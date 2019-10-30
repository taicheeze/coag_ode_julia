using MAT
using Sundials
using DelimitedFiles
include("massBalances_split.jl")
include("initialConditions.jl")

function estimation(params)
    vars["constants"][128]=params[1]; #upa activation of plasmin w/o TXA default 0.73
    vars["constants"][129]=params[2]*params[1]; #upa activation of plasmin w/ TXA_vals default 1.85
    vars["constants"][130]=params[3]*1e2; #TXA binding to PG default 1e2
    vars["constants"][131]=params[8]*1e-6*vars["constants"][130]; #TXA unbinding to PG Kd default 1.1
    vars["constants"][133]=params[4]*1e2; #TXA binding to PN default
    vars["constants"][134]=params[9]*1e-5*vars["constants"][133]; #TXA unbinding to PN Kd default 4.5, constant default 1e-5
    vars["constants"][121]=params[5]; #rate of plasmin degradation of FnII
    vars["constants"][122]=params[5]; #rate of plasmin degradation of FnII2
    vars["constants"][150]=params[6]*1e5; #rate of plasmin binding to FnII
    vars["constants"][151]=params[6]*1e5; #rate of plasmin binding to FnII2
    vars["constants"][152]=params[7]*1e-6*vars["constants"][151]; #rate of plasmin unbinding
    vars["constants"][153]=params[7]*1e-6*vars["constants"][151];
    vars["constants"][154]=params[10]; #rate of plasmin degradation of Fg

    TXA_vals=[0,6.36e-9,6.36e-8,6.36e-7,6.36e-6]#,6.36e-5,6.36e-4,6.36e-3]
    norm_MCF=Array{Float64,1}(undef,0);
    ly30_array=Array{Float64,1}(undef,0);
    TSIM = collect(0:10:5000);
    TSIM = convert(Array{Float64,1}, TSIM)
    X=0;
    base_MCF=1;
    for i=1:length(TXA_vals)
        y = initialConditions(98,TXA_vals[i]);
        problem(t,y,ydot) = massBalances(t,y,ydot,vars);
        X = Sundials.cvode(problem,y,TSIM,reltol=1e-6,abstol=1e-18);
        MCF,MCF_ind=findmax(X[:,69]);

        if i==1
            base_MCF=MCF;
        end

        if MCF_ind[1]>501-180
            ly30=0;
        else
            ly30=100*(MCF-X[MCF_ind[1]+180,69])/MCF;
        end
        append!(norm_MCF,MCF);
        append!(ly30_array,ly30);
    end
    norm_MCF=norm_MCF/base_MCF;
    return(norm_MCF,ly30_array)
end


function objective_fun(params=[0.73,2.5,1,1,.313,1,0.5,1.1,4.5,.313])
    MCF_est,ly30_est=estimation(params);
    MCF_true=[1.0,0.6,0.32,0.76,1.3]#,1.2,1.2,1.1];
    ly30_true=[29.3,4.2,22.3,7.7,0.9]#,0,0.6,0.1];
    MCF_err=0.0;
    ly30_err=0.0;
    for i=1:length(MCF_true)
        MCF_err+=((MCF_true[i]-MCF_est[i])/MCF_true[i])^2;
        if ly30_true[i] ==0 && ly30_est[i]<=0.0001
            ly30_err+=0;
        else
            ly30_err+=((ly30_true[i]-ly30_est[i]) /maximum([ly30_true[i],ly30_est[i]]))^2;
        end
    end
    weights=[.75,.25];
    cost=MCF_err*weights[1]+ly30_err*weights[2];
    return cost
end

# jan 30 best fit: [2.05431, 1.5385, 9.77698, 0.01, 0.199598, 0.799362, 3.0, 5.07864, 0.425278]

function get_results(col)
    vars = matread("constants.mat");
    vars["constants"]=[vars["constants"] 0.313]
    TXA_vals=[0,1e-6,3e-6,1.4e-5,5.4e-5,3.47e-3]
#    norm_MCF=Array{Float64,1}(undef,0);
#    ly30_array=Array{Float64,1}(undef,0);
    TSIM = collect(0:10:15000);
    TSIM = convert(Array{Float64,1}, TSIM)
    X=0;
#    base_MCF=1;
    sol=ly30_array=Array{Float64,1}(undef,0);
    for i=1:length(TXA_vals)
        y = initialConditions(98,TXA_vals[i]);
        problem(t,y,ydot) = massBalances(t,y,ydot,vars);
        X = Sundials.cvode(problem,y,TSIM,reltol=1e-6,abstol=1e-18);
#        MCF,MCF_ind=findmax(X[:,69]);

        if i==1
            sol=X[:,col];
        else
            sol=hcat(sol,X[:,col])
        end

    end
    writedlm("./results_dump/test_apr10.csv",sol,',');
    return
end

function get_full_results()
    vars = matread("constants.mat");
    vars["constants"]=[vars["constants"] 0.313]
    TXA_val=3.47e-3;
    TSIM = collect(0:10:15000);
    TSIM = convert(Array{Float64,1}, TSIM)
    X=0;
    y = initialConditions(98,TXA_val);
    problem(t,y,ydot) = massBalances(t,y,ydot,vars);
    X = Sundials.cvode(problem,y,TSIM,reltol=1e-6,abstol=1e-18);

    writedlm("./results_dump/test_apr10_full_2.csv",X,',');
    return
end
