using MAT
using Sundials
include("massBalances_split.jl")
include("initialConditions.jl")
function main()

    vars = matread("constants.mat");
    y = initialConditions(96);
    TSIM = collect(0:10:5000);
    TSIM = convert(Array{Float64}, TSIM)
    problem(t,y,ydot) = massBalances(t,y,ydot,vars);
    X = Sundials.cvode(problem,y,TSIM,reltol=1e-6,abstol=1e-18);
    return (TSIM,X);
end
