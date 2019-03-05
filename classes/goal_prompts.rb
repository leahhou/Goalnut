#take codes from goal.rb
require_relative 'classes/goal.rb'


## Tests the given string to see if it equals 'yes'
## Converts given string to downcase to accept any combination of case
### Returns true if equal to "yes" otherwise returns false
def is_yes?(str)
    if str.downcase == "yes"
        return true
    end
    return false
end 

def is_num(var)
    var.numeric?
end

goal = ""
time_frame = ""
action = ""
report_frequency = ""
times_of_week = ""
duration_of_action = ""

#prompt users to enter their goal
puts "Hi, would you like to create a new goal? [yes/no]" 
input = gets.chomp 
#create a control flow of yes and no after taking in users' answer input 
#to see if they would like to continue the program
if !is_yes?(input)
    puts "As you do not want to set a goal; Exiting program"
    exit
end

#prompt goal setting
puts "What goal would you like to set today?"
goal = gets.chomp

#prompt action setting
puts "what action would you like to do to work towards your goal?"
action = gets.chomp 

#prompt time_frame setting
puts "what is the time frame[IN DAYS] of your action?"
time_frame = gets.chomp

# Checking to see if the entered input is > 7 days
## If input > 7 then it will print a message 
### warning the user, that max days is 7 and set 'time_frame' to 7.
if time_frame.to_i >  7
    #TODO: create handler for string not number
    puts "ERROR: Maximum timeframe is a week. Maximum has been set to seven days."
end

#prompt report_frequency setting
# This will be the number of times the user has to report durring the goal period.
puts "How often would you like to record your progress?"
report_frequency = gets.chomp 

puts "how many times a week would you like to #{action}"
times_of_week = gets.chomp

puts "how long would you like to carry on #{action} each time?"
