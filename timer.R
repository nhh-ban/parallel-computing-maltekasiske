library(tictoc)

# Time the original script
tic("Original")
source("scripts/1_hw4_solution_original.R")
toc()

# Time the script with parallel computing
tic("Parallel computing")
source("scripts/2_hw4_solution_parallel_computing.R")
toc()

# Time the script with rewritten MTweedieTests function to split the 
# M simulations in more than one core
tic("Multiple cores")
source("scripts/3_hw4_solution_multiple_cores.R")
toc()


############ Results ############ 
# Original: 62.63 sec
# Parallel: 50.61 sec
# Multiple cores: 62.16 sec

# The multiple cores script (62.16 sec) might be almost as slow as the original 
# one because of one of the two reasons:
# 1. Communication overhead: Splitting simulations across multiple cores may 
# introduce communication overhead, slowing down the process.
# 2. Non-parallelizable sections: Some parts of the script can't be parallelized
# and must be executed sequentially, limiting potential speedup.
