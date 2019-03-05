require_relative 'goal'

class Menu

    def main_menu
        options = ["New Goal", "Quit"]
        quit = false
        while !quit
            puts "Welcome to the Goals app. What would you like to do?"
            options.each do |item|
                puts " #{item}"
            end
            input = gets.chomp.downcase
            case input
            when "new goal"
                goal_ref = Goal.new
            when "quit"
                quit = true
            end
        end
    end
end

