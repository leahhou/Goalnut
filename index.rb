require 'colorize'
require_relative 'classes/goal'
require_relative 'classes/reward'

# printing logo
puts "
██████╗  ██████╗  █████╗ ██╗     ███╗   ██╗██╗   ██╗████████╗
██╔════╝ ██╔═══██╗██╔══██╗██║     ████╗  ██║██║   ██║╚══██╔══╝
██║  ███╗██║   ██║███████║██║     ██╔██╗ ██║██║   ██║   ██║   
██║   ██║██║   ██║██╔══██║██║     ██║╚██╗██║██║   ██║   ██║   
╚██████╔╝╚██████╔╝██║  ██║███████╗██║ ╚████║╚██████╔╝   ██║   
╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝    ╚═╝   
                                                             
".colorize(:blue)

#creating reference for class goal
# calling goal methods
g = Goal.new
g.gather_reports
g.print_results
g.calc_result_duration_perc
g.calc_result_times_perc
g.calc_result_duration_average

#ref for reward class
#

r = Reward.new

# testing commented out unless needed.
# p g.perc_duration_achieved
# p g.perc_times_achieved

g.perc_duration_achieved.to_i == 100 and g.perc_times_achieved.to_i == 100 ? r.give_a_goalnut : r.give_some_sprinkles




