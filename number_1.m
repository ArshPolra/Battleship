% This function creates a "1" 

function[number]=number_1()

% Generating a vector of ones 
number = ones(40, 40);

% Going through each rows and columns of the number vector 
for i = 1:length(number)
    
    
    for j = 1:length(number)
        
        % Creating a black pixel on all of the rows and columns agreeing to this condition 
        if(j>=25 && j<=30)&&(i>=10 && i<=35)
            
            number(i,j) = 0;
            
        end
           
        end
    end
    
end


