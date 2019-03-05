require_relative 'goal_prompts'

class Goal
    attr_reader :goal, :action, :time_frame, :report_frequency
    
    def initialize()
        gp_ref = GoalPrompts.new
        gp_ref.new_goal
        @goal = gp_ref.choose_goal
        @action = gp_ref.choose_action
        @time_frame = 7
        @times = gp_ref.set_time
        @duration = gp_ref.set_duration
        @report_frequency = gp_ref.set_report_frequency
        @reports = []
    end

    #What did you achieve in the this reportable period?
    ##Loop until all reports submitted
    def gather_reports
        i = @report_frequency.to_i
        while i > 0
        puts "How long did you #{@action} for in your first entry: "
        @reports << gets.chomp
        i -=1 
        end
    end
end