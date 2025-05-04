require_relative "LRPSFramework/LRPSFramework.rb"

def applyRPGMetrics
  LRPS_Framework::Metrics.apply_RPG_metrics
end

def needsProgramming
  LRPS_Framework::Metrics.needs_programming
end

def elementalWeakness
  LRPS_Framework::Enemy.elemental_weaknesses
emd

#                    applyRPGMetrics  needsProgramming elementalWeakness
# applyRPGMetrics    a,a              a,n              a,e
# needsProgramming   n,a              n,n              n,e
# elementalWeakness  e,a              e,n              e,e

processes = [
  [["applyRPGMetrics",   "applyRPGMetrics"], ["applyRPGMetrics",   "needsProgramming"], ["applyRPGMetrics",   "elementalWeakness"]],
  [["needsProgramming",  "applyRPGMetrics"], ["needsProgramming",  "needsProgramming"], ["needsProgramming",  "elementalWeakness"]],
  [["elementalWeakness", "applyRPGMetrics"], ["elementalWeakness", "needsProgramming"], ["elementalWeakness", "elementalWeakness"]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_process = processes[cur_row][cur_col][cur_arr]

if    "applyRPGMetrics"   == current_process; applyRPGMetrics
elsif "needsProgramming"  == current_process; needsProgramming
elsif "elementalWeakness" == current_process; elementalWeakness
else
  LRPS_Framework::Enemy.elemental_weaknesses
end
