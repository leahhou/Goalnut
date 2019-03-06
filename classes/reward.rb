require_relative 'goal.rb'

class Reward
    
    def give_a_goalnut 
        puts "You have won a goalnut for this week!"
    end   
    
    def give_some_sprinkles 
        puts "Greate effort, keep doing it next week!!!"
    end    
        

end    



r = Reward.new
g.perc_duration_achieved
g.perc_times_achieved
if g.perc_duration_achieved >= 100 and g.perc_times_achieved >= 100
    r.give_a_goalnut
end 
if g.perc_duration_achieved < 100 or g.perc_times_achieved < 100
    r.give_some_sprinkles
end

