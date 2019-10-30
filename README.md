# coag_ode_julia
# Introduction
This is the repository for the ODE model for coagulation used by Petzold Group researchers at UCSB. The code was developed by Dr. Tie Bo Wu during his time at UCSB. The current model for coagulation was created by Tie Bo Wu. This README was written by Tie Bo Wu and can be contacted via e-mail: tiebo(at)outlook(dot)com.
This code is intended for research use, it is not production ready code, it contains many legacy files and outdated lines of code.

## Download and install Julia
To run this code, you must install Julia. Instructions can be found at: https://julialang.org/

After installing Julia, you must install the necessary packages, you will be prompted to add them if you run the command: include("paaramest.jl")

For reference, the following packages are used: MAT, Sundials, DelimitedFiles.

## Running a Model

To run a simulation, use one of the following commands:

get_results(col): this command runs the model and stores the data of a single species, specified by the column number (or species number), currently it is set to run the model at different concentrations of TXA but can be reworked to do multiple runs under different conditions

get_full_results(): this command runs the model at a single TXA concentration (defined as TXA_val), and outputs all species at all time points, mostly used for debugging

get_results_delayed(col,delay): this command does the same as get_results but the introduction of tissuefactor can be delayed by the input named delay (in seconds).

The results are output into a .csv file defined in paramest.jl, each command has its own line to specify the file name.

## Analyzing data

The data is output into a .csv file which can be read by any 3rd party software of your choice, there are some short MATLAB codes that are provided that can be used to plot the data quickly.

## Creating your own model

This model is defined by 4 main files: initialConditions.jl, massBalances_v2.jl, calculateRates_v2.jl, constants_v2.mat

initialConditions controls the initial values at the start of the simulations, the default value is 0 if not specified. units are in M

calculateRates defines the reaction rates, constants are taken from the matlab file constants_v2.mat

massBalances is the sum of the reaction rates for each species

constants_v2 is a MATLAB file that stores the reaction constants, the code can be edited to support a different format
