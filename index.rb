require 'colorize'
require_relative 'classes/goal'
require_relative 'classes/reward'


puts "
██████╗  ██████╗  █████╗ ██╗     ███╗   ██╗██╗   ██╗████████╗
██╔════╝ ██╔═══██╗██╔══██╗██║     ████╗  ██║██║   ██║╚══██╔══╝
██║  ███╗██║   ██║███████║██║     ██╔██╗ ██║██║   ██║   ██║   
██║   ██║██║   ██║██╔══██║██║     ██║╚██╗██║██║   ██║   ██║   
╚██████╔╝╚██████╔╝██║  ██║███████╗██║ ╚████║╚██████╔╝   ██║   
╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝    ╚═╝   
                                                             
".colorize(:blue)

g = Goal.new
g.gather_reports
g.print_results
g.calc_result_duration_perc
g.calc_result_times_perc
g.calc_result_duration_average

r = Reward.new
g.perc_duration_achieved
g.perc_times_achieved
if g.perc_duration_achieved >= 100 and g.perc_times_achieved >= 100
    r.give_a_goalnut
end 
if g.perc_duration_achieved < 100 or g.perc_times_achieved < 100
    r.give_some_sprinkles
end



