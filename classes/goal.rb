require_relative 'goal_prompts'

#A Goal class is created to take input of goal_prompts as instance variable
class Goal
    attr_reader :goal, :action, :time_frame, :report_frequency
    
    def initialize()
        gp_ref = GoalPrompts.new
        gp_ref.new_goal
        @goal = gp_ref.choose_goal
        @action = gp_ref.choose_action
        @time_frame = 7
        @times = gp_ref.set_times
        @duration = gp_ref.set_duration
        @report_frequency = gp_ref.set_report_frequency
        @reports = []
     
    end

    # Prompts user for input and appends the results to an arr
    ##Loop until all reports submitted
    def gather_reports
        i = @report_frequency.to_i
        while i > 0
        puts "How long did you #{@action} for in your this entry: [If you did not run enter 0] "
        @reports << gets.chomp
        i -=1 
        end
        p @reports
    end

 
    
    #create a method that show the percentage of achieving the duration of action user set within a week
    def calc_result_duration_perc
        results_duration_achieved = []
        @report.each do |item|
            if item >= @duration_of_action
                results_duration_achieved << item
            end
        puts (results_achieved.length/@report.length) * 100 + "%"
    end
    
    #create a method that show the percentage of meeting the times of actions user set within a week
    def calc_result_times_perc
        results_times_achieved = []
        @report.each do |item|
            if item > 0
               results_times_achieved << item
            end
        puts (results_times_achieved.length/@times.length)*100 + "%"
    end

        

    #create a method that show you the average of your actions
    def calc_result_duration_average
        @report.inject(0.0){ |sum, el| sum + el }.to_f / @report.size
    end    
    
    

    #create a method to print user's input when reporting 
    def print_results
        puts @report 
    end

    
end