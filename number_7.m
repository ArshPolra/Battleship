% This function creates a "7" 

function[number]=number_7()

% Generating a vector of ones 
number = ones(40, 40);

% Going through each rows and columns of the number vector 
for i = 1:length(number)
    
    
    for j = 1:length(number)
        
        % Creating 1 horizontal lines and 1 vertical of black pixels     
        if(j>=25 && j<=30)&&(i>=10 && i<=35)||(j>=15 && j<=30)&&(i>=10 && i<=15)
            
            number(i,j) = 0;
            
        end
        
    end
    
end
    
   
end


