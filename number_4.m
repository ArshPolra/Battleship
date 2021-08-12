% This function creates a "4" 

function[number]=number_4()

% Generating a vector of ones 
number = ones(40, 40);

% Going through each rows and columns of the number vector 
for i = 1:length(number)
    
    
    for j = 1:length(number)
        
 
    % Creating 1 horizontal lines of black pixels 
 if ((i>=10 && i<=25)&&(j>=15 && j<=20))||((i>=10 && i<=35)&&(j>=30 && j<=35))
 
   number(i,j) = 0;
   
 end
 
     % Creating 2 vertical lines of black pixels 
 if ((i>=20 && i<=25)&&(j>=15 && j<=35))
 
   number(i,j) = 0;
   
 end
           
        end
    end
    
    
end


