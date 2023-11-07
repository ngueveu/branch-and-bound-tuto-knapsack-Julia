
#Branch-and-Bound for solving a knapsack problem

import Pkg;

include("procedures.jl")

if(length(ARGS) < 1)
    INSTANCE = "instances/KNAPnewformat/test.opb.txt"
else
    INSTANCE = ARGS[1]
end

solveNdisplayKnap(INSTANCE)

println("press enter to exit ! ")
readline()
