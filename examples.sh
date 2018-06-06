# execute prism with the sparse engine to compute the minimal unbounded probability to reach the target
bin/prism -s -javamaxmem 150g -cuddmaxmem 160g MDP/mdp_10x10_2_2_3.pm -pctl 'Pmin=? [F "human_goal"]'
# or use the explicit engine (-e)
bin/prism -e -javamaxmem 150g -cuddmaxmem 160g MDP/mdp_10x10_2_2_3.pm -pctl 'Pmin=? [F "human_goal"]'
# or use the symbolic engine (-m)
bin/prism -m -javamaxmem 150g -cuddmaxmem 160g MDP/mdp_10x10_2_2_3.pm -pctl 'Pmin=? [F "human_goal"]'
# alternatively, check the  maximum
bin/prism -m -javamaxmem 150g -cuddmaxmem 160g MDP/mdp_10x10_2_2_3.pm -pctl 'Pmax=? [F "human_goal"]'
# or the step-bounded number
bin/prism -m -javamaxmem 150g -cuddmaxmem 160g MDP/mdp_10x10_2_2_3.pm -pctl 'Pmax=? [F<=30 "human_goal"]'

# for the SG, use the correct prism-games version. See also the readme.
# explicitly:
bin/prism  -javamaxmem 160g -cuddmaxmem 160g SG/with_robot_10x10M.nm SG/game_property.prop 
# or via the mtbdd engine:
bin/prism -m -javamaxmem 160g -cuddmaxmem 160g SG/with_robot_10x10M.nm SG/game_property.prop 
