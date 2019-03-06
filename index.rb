require 'colorize'
require_relative 'classes/goal'


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

