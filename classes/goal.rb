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
        @reports.each do |item|
            if item.to_i >= @duration.to_i
                results_duration_achieved << item
            end
        end    
        puts "You set to #{@action} for #{@duration}mins each time, and  #{(results_duration_achieved.length.to_f/@reports.length) * 100}% of time, you #{@action} for that long this week."
    end
    
    #create a method that show the percentage of meeting the times of actions user set within a week
    def calc_result_times_perc
        results_times_achieved = []
        @reports.each do |item|
            if item.to_i > 0
               results_times_achieved << item
            end
        end
        puts "You would like to #{@action} for #{@times} times this week, and you have achieved it #{(results_times_achieved.length.to_f/@times.to_f) * 100}% of the time this week!"
    end

        

    #create a method that show you the average of your actions
    def calc_result_duration_average
        puts "Your average time of #{@action} is #{@reports.inject(0.0){ |sum, el| sum + el.to_f }.to_f / @reports.size}mins"

    end    
    
    

    #create a method to print user's input when reporting g
    def print_results
        puts @reports 
    end

    
end