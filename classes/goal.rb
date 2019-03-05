require_relative 'goal_prompts'

class Goal
    attr_reader :goal, :action, :time_frame, :report_frequency
    gp_ref = GoalPrompts.new
    def initialize()
        @goal = gp_ref.choose_goal
        @action = gp_ref.choose_action
        @time_frame = 7
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
    
    def compare_reports

    end
    gp_ref.new_goal
end