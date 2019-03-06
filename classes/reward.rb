require 'colorize'
require_relative 'goal.rb'

class Reward
    
  # Returns successful string plus a string containing an assi art doughnut.
    def give_a_goalnut 
        puts "You have won a goalnut for this week!"
        puts "              /***/                 
           %,***(**********%           
         ,******** ****(* /***         
       ,,*(**************(((*/**       
      ,***/((/***(****** */((((/*      
     ,***((/****//////*****/(.((/*     
    &**/(((/***/       //*//(((***&    
    **/(((/***/         /%**///***,    
    ***((((***/         /**** ****,    
    %***(((.(**/       /****//****%    
     ,***((((/**&*(///(#*/(((((**/     
      ,%*************///*(((((/*/      
       ,,,***,****/( (((((( ***%       
         ,,*******//((((/****/         
           *,,*(********%,,*           
                (,***,(".colorize(:yellow)
    end   
    

    # returns encouragement for users that did not achieve their goal.
    #
    def give_some_sprinkles 
        puts "Great effort, keep trying it next week!!!"
    end    
        

end    



