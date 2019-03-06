require_relative 'classes/goal'


puts "+-+-+-+-+-+-+-+-+-+-+-+-+
|WELCOME| |TO| |GOALNUT!|
+-+-+-+-+-+-+-+-+-+-+-+-+"

g = Goal.new
g.gather_reports
g.print_results
g.calc_result_duration_perc
g.calc_result_times_perc
g.calc_result_duration_average

