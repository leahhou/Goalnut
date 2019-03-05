

class Goal
    attr_reader :goal, :action, :time_frame, :report_frequency
    
    def initialize(goal, action, time_frame, report_frequency)
        @goal = goal
        @action = action
        @time_frame = time_frame
        @report_frequency = report_frequency
    end

end