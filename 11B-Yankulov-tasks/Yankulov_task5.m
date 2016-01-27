function [is_positive, is_geometric] = Yankulov_task5(progression)

    if progression(2) == (progression(1) + progression(3))  / 2 
    
        if(progression(2) - progression(1) < 0)
            is_positive = -1
        else
            is_positive = 0
        end
        is_geometric = 0
    elseif progression(3) == (progression(1) + progression(2)) / 2
       if(progression(3) - progression(1) < 0)
            is_positive = -1
       else
            is_positive = 0
       end
       is_geometric = 0
    elseif progression(2)^2 == progression(1)*progression(3)
        if(progression(1) ~= 0)
         if(progression(2) / progression(1) > 0 && progression(2) / progression(1) < 1)
            is_positive = -1
         else
            is_positive = 0
         end
        is_geometric = 1
       end
       
    elseif  progression(3)^2 == progression(1)*progression(2)
      if(progression(1) ~= 0)
       if(progression(3) / progression(1) > 0 && progression(3) / progression(1) < 1)
            is_positive = -1
       else
            is_positive = 0
       end
       is_geometric = 1
      end  
    end
end