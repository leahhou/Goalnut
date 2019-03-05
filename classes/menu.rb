#require_relative 'goal'

class Menu

    # def main_menu
    #     options = ["New Goal", "Quit"]
    #     quit = false
    #     while !quit
    #         puts "Welcome to the Goals app. What would you like to do?"
    #         options.each do |item|
    #             puts " #{item}"
    #         end
    #         input = gets.chomp.downcase
    #         case input
    #         when "new goal"
    #             goal_ref = Goal.new
    #         when "quit"
    #             quit = true
    #         end
    #     end
    # end
## Pass array of Strings, name of menu and an the instance of the caller.
## For each string print an option for user input.
## Take the user input and if it matches an element of the passed array
### then try to call a method with the same name as the string.
    def dyn_menu(arr, name, obj)
        quit = false
        until quit
            puts "welcome to the #{name} menu. Please enter one of the following options:"
            p arr
            arr.each do |item|
                puts " #{item}"
            end
            input = gets.chomp.to_sym
            p input
            obj.send(input)
        end
    end
end

class Tester 

        @name = "Trouble"
        @arr = ["trouble", "trouble_two", "trouble_three"]

    def trouble
        puts "YAAAAAASSSSS"
    end
    m_ref = Menu.new
    m_ref.dyn_menu(@arr, @name, t_ref)
end




