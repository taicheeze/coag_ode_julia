using Optim
using DifferentialEquations
using DelimitedFiles
include("paramest.jl")

function optim_script(initial_x=[2.6,10,100,1,10,1,0.5,3,4.5,1])
    global vars
    vars = matread("constants.mat");
    vars["constants"]=[vars["constants"] 0.313]
    lowerb = [5e-1,1.5,1e-1,1e-2,1e-1,1e-2,0.5,1e-2,1e-1,1e-1];
    upperb = [1e1,1e1,1e2,1e2,1e1,1e2,3.0,5,1e1,1e2];
    res=optimize(objective_fun,initial_x,ParticleSwarm(lower=lowerb,upper=upperb,n_particles=30),Optim.Options(x_tol=1e-2,f_calls_limit=50000));
end

function glob_sens()
    global vars
    vars = matread("constants.mat");
    param_range=[[1e-1,1e1],[1.0,1e1],[1e-1,1e1],[1e-1,1e1],[1e-1,1.0],[1e-1,1e1],[0.5,2.0],[1e-1,1e1],[1e0,1e1]];
    sobol_zero = sobol_sensitivity(objective_fun,param_range,2000,1);
end

function NM_optim()
    global vars
    vars = matread("constants.mat");
    vars["constants"]=vars["constants"]=[vars["constants"] 0.313]
    lowerb = [5e-1,1.5,1e-1,1e-2,1e-1,1e-2,0.5,1e-2,1e-1,1e-1];
    upperb = [1e1,2e1,1e2,1e2,1e1,1e2,3.0,5,1e1,1e1];
    initial_x = [2.6,19,100,1,10,1,0.5,3,4.5,1];
    res=optimize(objective_fun,initial_x,NelderMead(),Optim.Options(x_tol=1e-2,f_calls_limit=50000));
end

function SA_optim(initial_x=[2.6,19,100,1,10,1,0.5,3,4.5,1])
    global vars
    vars = matread("constants.mat");
    vars["constants"]=vars["constants"]=[vars["constants"] 0.313]
    lowerb = [5e-1,1.5,1e-1,1e-2,1e-1,1e-2,0.5,1e-2,1e-1,1e-1];
    upperb = [1e1,2e1,1e2,1e2,1e1,1e2,3.0,5,1e1,1e1];
    res=optimize(objective_fun,lowerb,upperb,initial_x,SAMIN(; nt= 5,     # reduce temperature every nt*ns*dim(x_init) evaluations
        ns= 10,     # adjust bounds every ns*dim(x_init) evaluations
        rt= 0.95,     # geometric temperature reduction factor: when temp changes, new temp is t=rt*t
        neps= 5,   # number of previous best values the final result is compared to
        f_tol= 1e-4, # the required tolerance level for function value comparisons
        x_tol= 1e-2, # the required tolerance level for x
        coverage_ok= false, # if false, increase temperature until initial parameter space is covered
        verbosity= 0),Optim.Options(x_tol=1e-2,iterations=100000,f_calls_limit=500000));
end

function jhgkjh
x=readdlm("./datasets\\TXA_0.csv",',')

end
