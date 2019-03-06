require 'colorize'
require_relative 'goal.rb'

class Reward
    
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
    
    def give_some_sprinkles 
        puts "Greate effort, keep doing it next week!!!"
    end    
        

end    



