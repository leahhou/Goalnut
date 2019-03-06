#class that checks to see if user input is expected.
class ValidInput

    # takes 2 integers and 1 input
    # checks to see if input is a numeric
    # then checks to see if inputs value lies within the range of bot and top
    # returns boolean
    #
    def is_num_range?(input, bot, top)
        is_number?(input) && input.to_i >= bot && input.to_i <= top ? true : false
    end

    def is_num_greater?(input, bot)
        is_number?(input) && input.to_i > bot ? true : false
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

    def empty?(input)
        input == "" ? true : false
    end

    # takes 1 argument 
    # checks to see if it is a numeric
    # checks to see if input is greater than -1
    # returns boolean
    #
    def is_num_pos?(input)
        is_number?(input) && input.to_i > -1 ? true : false
    end

    # takes 1 argument
    # chacks to see if input is equal to 'yes'
    # returns boolean
    # returns boolen
    #
    def is_yes?(input)
        input.downcase == "yes" ? true : false
    end 

    def is_number?(input)
        true if Float(input) rescue false
    end
end

