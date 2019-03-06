require_relative 'valid_input'


# Tests the given string to see if it equals 'yes'
# Converts given string to downcase to accept any combination of case
# Returns true if equal to "yes" otherwise returns false
#
class GoalPrompts
    

    def initialize
        @goal = ""
        @action = ""
        @times_of_week = ""
        @duration_of_action = ""
        @report_frequency = ""
        @vi_ref = ValidInput.new
    end

    # create a method called new_goal
    # prompts users to enter their goal
    # create a control flow of yes and no after taking in users' answer input 
    # to see if they would like to continue the program
    #
    def new_goal
        input = ""
        until @vi_ref.is_valid_text?(input, ["yes", "no"])
            puts "Hi, would you like to create a new goal? [yes/no]" 
            input = gets.chomp 
        end
        unless @vi_ref.is_yes?(input)
            puts "As you do not want to set a goal; Exiting program"
            exit
        end
    end

    # create a method called choose_goal
    # prompt goal setting
    #
    def choose_goal
        puts "What goal would you like to set today?" 
        @goal = gets.chomp
    end 
    #To do: give options to goals as exercise more, read more, eat healthier

    # create a method called choose_action
    # prompt action setting
    #
    def choose_action
        puts "What action would you like to do to work towards your goal?"
        @action = gets.chomp 
    end 
    ##To do:give options to actions as swimming, jogging,  gym

    # create a method called set_times
    # Gather input
    # tests input: is numeric and greater than -1
    # stores input
    #
    def set_times
        puts "How many times a week would you like to go #{@action}"
        input = gets.chomp
        @vi_ref.is_num_pos?(input) ? @times_of_week = input : set_times
    end 

    # Create a method called set_duration
    # Gather input
    # tests input: is numeric and greater than -1
    # stores input
    #
    def set_duration
        puts "How long would you like to carry on your #{@action} each time(minutes)?"
        input = gets.chomp
        @vi_ref.is_num_pos?(input) ? @duration_of_action = input : set_duration
    end

    # create a method called set_report_frequency
    # This will be the number of times the user has to report durring the goal period.
    # Gather input
    # tests input: is numeric and greater than -1
    # stores input
    #
    # def set_report_frequency
    #     puts "How often would you like to record your progress per week?"
    #     input = gets.chomp 
    #     @vi_ref.is_num_pos?(input) ? @report_frequency = input : set_report_frequency
    # end 

end 