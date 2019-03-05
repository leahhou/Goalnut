require_relative 'valid_input'
## Tests the given string to see if it equals 'yes'
## Converts given string to downcase to accept any combination of case
### Returns true if equal to "yes" otherwise returns false
class GoalPrompts
    
    vi_ref = ValidInput.new
    def is_num(var)
        var.numeric?
    end

    def initialize
        @goal = ""
        @action = ""
        @times_of_week = ""
        @duration_of_action = ""
        @report_frequency = ""
    end

    # create a method called new_goal
    # prompts users to enter their goal
    #create a control flow of yes and no after taking in users' answer input 
    #to see if they would like to continue the program
    def new_goal
        puts "Hi, would you like to create a new goal? [yes/no]" 
        input = gets.chomp 
        
        if !is_yes?(input)
            puts "As you do not want to set a goal; Exiting program"
            exit
        end
    end

    #create a method called choose_goal
    #prompt goal setting
    def choose_goal
        puts "What goal would you like to set today?" 
        @goal = gets.chomp
    end 
    #To do: give options to goals as exercise more, read more, eat healthier

    #create a method called choose_action
    #prompt action setting
    def choose_action
        puts "what action would you like to do to work towards your goal?"
        @action = gets.chomp 
    end 
    ##To do:give options to actions as swimming, jogging,  gym

    #create a method called set_times
    def set_time
        puts "how many times a week would you like to go #{@action}"
        @times_of_week = gets.chomp
    end 

    #create a method called set_duration
    def set_duration
        puts "how long would you like to carry on your #{@action} each time(minutes)?"
        @duration_of_action = gets.chomp
    end
    ##To do: add condition to enter in minutes

    # create a method called set_report_frequency
    # prompt report_frequency setting
    # This will be the number of times the user has to report durring the goal period.
    def set_report_frequency
        puts "How often would you like to record your progress per week?"
        @report_frequency = gets.chomp 
    end 

end 