require 'colorize'
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
        # delete if no error: @report_frequency = ""
        @vi_ref = ValidInput.new
        @key_text_color = :red
    end

    # create a method called new_goal
    # prompts users to enter their goal
    # create a control flow of yes and no after taking in users' answer input 
    # to see if they would like to continue the program
    #
    def new_goal
        input = ""
        until @vi_ref.is_valid_text?(input, ["yes", "no"])
            puts "Hi, would you like to create a new goal?" +  "[yes/no]".colorize(@key_text_color)
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
        puts "What " + "goal".colorize(@key_text_color) + " would you like to set today?"
        input = gets.chomp 
        @vi_ref.empty?(input) ? choose_goal : @goal = input
    end 

    # create a method called choose_action
    # prompt action setting
    #
    def choose_action
        puts "What " + "action".colorize(@key_text_color) + " would you like to do to work towards your goal?"
        input = gets.chomp 
        @vi_ref.empty?(input) ? choose_action : @action = input
    end 

    # create a method called set_times
    # Gather input
    # tests input: is numeric and greater than -1
    # stores input
    #
    def set_times
        puts "How many " + "times".colorize(@key_text_color) + " a week would you like to go #{@action}" + "[num > 0]".colorize(@key_text_color)
        input = gets.chomp
        @vi_ref.is_num_greater?(input, 0) ? @times_of_week = input : set_times
    end 

    # Create a method called set_duration
    # Gather input
    # tests input: is numeric and greater than -1
    # stores input
    #
    def set_duration
        puts "How " + "long".colorize(@key_text_color) + " would you like to carry on your #{@action.colorize(@key_text_color)} each?" + "[time in minutes num > 0]".colorize(@key_text_color)
        input = gets.chomp
        @vi_ref.is_num_greater?(input, 0) ? @duration_of_action = input : set_duration
    end

end 