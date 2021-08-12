% This function creates a board for the computer and its ships 

function [computerPlane] = compPlane(number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9)

% Creating a computerPlane of 500 by 500 white pixels
computerPlane = ones(500, 500);
[rows, columns] = size(computerPlane);


for i = 1:rows-1 % the -1 removes the last line in the rows and last line in the columns 
    
        % Creating a line of black pixles every 50th row and column of the 
        % battle plane (board) to create a grid 
        if (mod(i,50) == 0)
            
            % Generating a grid of with each box of 50 by 50 pixels 
            computerPlane(i,:) = 0;
            computerPlane(:,i) = 0;

        end
        
    
end


% Overwriting the battle plane to display "1" from function number_1
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 1 from the function number_1
        computerPlane(i+51, j) = number_1(i,j);
        computerPlane(i, j+51 ) = number_1(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_2
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_2
        computerPlane(i+101, j) = number_2(i,j);
        computerPlane(i, j+101 ) = number_2(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "3" from function number_3
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_3
        computerPlane(i+151, j) = number_3(i,j);
        computerPlane(i, j+151 ) = number_3(i,j);
        
        
        
    end
    
end



% Overwriting the battle plane to display "2" from function number_4
for i = 1:40
    
    
    
    for j = 1:40
        
         % Printing number 2 from the function number_4
        computerPlane(i+201, j) = number_4(i,j);
        computerPlane(i, j+201 ) = number_4(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_5
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_5
        computerPlane(i+251, j) = number_5(i,j);
        computerPlane(i, j+251 ) = number_5(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_6
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_6
        computerPlane(i+301, j) = number_6(i,j);
        computerPlane(i, j+301 ) = number_6(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_7
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_7
        computerPlane(i+351, j) = number_7(i,j);
        computerPlane(i, j+351 ) = number_7(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_8
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_8
        computerPlane(i+401, j) = number_8(i,j);
        computerPlane(i, j+401 ) = number_8(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_9
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_9
        computerPlane(i+451, j) = number_9(i,j);
        computerPlane(i, j+451 ) = number_9(i,j);
        
        
        
    end
    
end



end
