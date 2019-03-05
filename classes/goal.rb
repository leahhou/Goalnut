#require_relative 'goal_prompts'

class Goal
    attr_reader :goal, :action, :time_frame, :report_frequency
    gp = GoalPrompts.new
    def initialize()
        @goal = gp.choose_goal
        @action = gp.choose_action
        @time_frame = gp.set_times
        @report_frequency = report_frequency#TODO change to method name from goal prompts
        @reports = []
    end

    #What did you achieve in the this reportable period?
    ##Loop until all reports submitted
    def gather_reports
        i = @report_frequency
        while i > 0
        @reports << gets.chomp
        end
    end
end