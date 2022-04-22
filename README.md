
# Branch-and-Bound for teaching/tutorial purposes: solving a knapsack problem

## To run the code from an interactive julia session (by default instance 'test.opb.txt' will be solved)

`cd("PATH-TO-MAIN-DIRECTORY")`

`include("main.jl")`

or

`include("PATH-TO-MAIN-DIRECTORY/main.jl")`

## To solve a specific instance (from the terminal)

`cd PATH-TO-MAIN-DIRECTORY`

To solve the instance 'knapPI_16_20_1000_1_-2291.opb.txt' located in the folder 'circle' of the instances folder 'instances/KNAPnewformat'

`julia main.jl "instancetosolve"`

for example:

`julia main.jl "instances/KNAPnewformat/circle/knapPI_16_20_1000_1_-2291.opb.txt"`

or

`julia main.jl "instances/KNAPnewformat/subset_sum/knapPI_6_50_1000_1_-994.opb.txt"`

NB: it may be necessary to specify the path to julia. In such a case :

`PATH-TO-JULIA-EXECUTABLE/julia main.jl "instancetosolve"`

for example:

`/Applications/Julia-1.7.app/Contents/Resources/julia/bin/julia  main.jl "instances/KNAPnewformat/circle/knapPI_16_20_1000_1_-2291.opb.txt"`

NB2: to display the branch-and-bound tree, add argument '--show' as follows:

`julia main.jl "instancetosolve" --show`

for example

`julia main.jl "instances/KNAPnewformat/subset_sum/knapPI_6_50_1000_1_-994.opb.txt" --show`
