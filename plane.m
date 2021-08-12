% This function creates a board where the player can see their battle ships
% and enemy's plane 

function [playerPlane] = plane(number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9, positions)

% Creating a playerPlane of 500 by 500 white pixels
playerPlane = ones(500, 500);
[rows, columns] = size(playerPlane);



for i = 1:rows-1 % the -1 removes the last line in the rows and last line in the columns 
    
    % Creating a line of black pixles every 50th row and column of the 
    % battle plane (board) to create a grid
        if (mod(i,50) == 0)
            
            % Generating a grid of with each box of 50 by 50 pixels 
            playerPlane(i,:) = 0;
            playerPlane(:,i) = 0;

        end
        
    
end


% Overwriting the battle plane to display "1" from function number_1
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 1 from the function number_1
        playerPlane(i+51, j) = number_1(i,j);
        playerPlane(i, j+51 ) = number_1(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_2
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_2
        playerPlane(i+101, j) = number_2(i,j);
        playerPlane(i, j+101 ) = number_2(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "3" from function number_3
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_3
        playerPlane(i+151, j) = number_3(i,j);
        playerPlane(i, j+151 ) = number_3(i,j);
        
        
        
    end
    
end



% Overwriting the battle plane to display "2" from function number_4
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_4
        playerPlane(i+201, j) = number_4(i,j);
        playerPlane(i, j+201 ) = number_4(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_5
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_5
        playerPlane(i+251, j) = number_5(i,j);
        playerPlane(i, j+251 ) = number_5(i,j);
        
        
        
    end
    
end



% Overwriting the battle plane to display "2" from function number_6
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_6
        playerPlane(i+301, j) = number_6(i,j);
        playerPlane(i, j+301 ) = number_6(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_7
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_7
        playerPlane(i+351, j) = number_7(i,j);
        playerPlane(i, j+351 ) = number_7(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_8
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_8
        playerPlane(i+401, j) = number_8(i,j);
        playerPlane(i, j+401 ) = number_8(i,j);
        
        
        
    end
    
end


% Overwriting the battle plane to display "2" from function number_9
for i = 1:40
    
    
    
    for j = 1:40
        
        % Printing number 2 from the function number_9
        playerPlane(i+451, j) = number_9(i,j);
        playerPlane(i, j+451 ) = number_9(i,j);
        
        
        
    end
    
end

% Placeing the player's ships in the battle plane 
positions = (positions*50)+50;

% Going through player's 5 ships 
for k = 1:5

% Assigning rows and cloums for the ships position
row = positions(1, k);
col = positions(2, k);

% Finidng the postion of the player's ships on the battle plane (the board)
for i = 1:48
    
    for j = 1:48
       
       % Creates a slinting line of the postion of ships on the board 
        playerPlane(row-i, col-i) = 0; 
        
    end
    
end

end


end