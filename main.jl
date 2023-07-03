
#Branch-and-Bound for solving a knapsack problem

import Pkg;
Pkg.add("GraphRecipes"); Pkg.add("Plots");
using GraphRecipes, Plots #only used to visualize the search tree at the end of the branch-and-bound

include("procedures.jl")

if(length(ARGS) < 1)
    INSTANCE = "instances/KNAPnewformat/test.opb.txt"
else
    INSTANCE = ARGS[1]
end

println("\n Branch-and-Bound for solving a knapsack problem. \n\n Solving instance '" * INSTANCE * "'\n")

BestProfit, Bestsol, trParentnodes, trChildnodes, trNamenodes = solveKnapInstance(INSTANCE)

println("\n******\n\nOptimal value = ", BestProfit, "\n\nOptimal x=", Bestsol)

println("\n Branch-and-bound tree visualization : start display ...")
display(graphplot(trParentnodes, trChildnodes, names=trNamenodes, method=:tree))
println("... end display. \n\n press enter to exit ! ")

readline()
