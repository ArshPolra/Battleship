% This function creates a "8" 

function[number]=number_8()

% Generating a vector of ones 
number = ones(40, 40);

% Going through each rows and columns of the number vector 
for i = 1:length(number)
    
    
    for j = 1:length(number)
        
      % Creating 2 horizontal lines of black pixels     
 if(j>=15 && j<=35)&&((i>=10 && i<=15)||(i>=20 && i<=25)||(i>=30 && i<=35))
            
     number(i,j) = 0;
            
 end
 
  % Creating 2 vertical lines of black pixels
 if ((i>=15 && i<=35)&&(j>=30 && j<=35))||((i>=15 && i<=35)&&(j>=15 && j<=20))
 
   number(i,j) = 0;
   
 end
           
        end
    end
    
    
end


