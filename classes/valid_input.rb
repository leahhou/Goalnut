#class that checks to see if user input is expected.
class valid_input

    # takes 2 integers and 1 input
    # checks to see if input is a numeric
    # then checks to see if inputs value lies within the range of bot and top
    # returns boolean
    #
    def is_num_range?(input, bot, top)
        input.numeric? && input >= bot && input <= top ? true : false
    end

    # takes 2 arguments string and array
    # If input is equal to an element in the array of expected input, return true.
    # returns boolean
    #
    def is_valid_text?(input, arr)
        result = false
        arr.each do |ele|
            result = true if input.downcase == ele.downcase
        end
        result
    end

    # takes 1 argument 
    # checks to see if it is a numeric
    # checks to see if input is greater than -1
    # returns boolean
    #
    def is_num_pos?(input)
        input.numeric? && input > -1 ? true : false
    end

    # takes 1 argument
    # chacks to see if input is equal to 'yes'
    # returns boolean
    # returns boolen
    #
    def is_yes?(input)
        input.downcase == "yes" ? true : false
    end 
end