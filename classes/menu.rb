#require_relative 'goal'
#Class uncalled 
###--NOTE THIS CLASS IS RESERVED FOR FUTURE CONTENT--#####
class Menu
    #early testing to create a dynamic menu method.
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


#class to test the dyn_menu method.
# DELETE or comment out functionality once dyn_menu begins use.
class Tester 

        @name = "Trouble"
        @arr = ["trouble", "trouble_two", "trouble_three"]

    def trouble
        puts "YAAAAAASSSSS"
    end
    m_ref = Menu.new
    m_ref.dyn_menu(@arr, @name, t_ref)
end




