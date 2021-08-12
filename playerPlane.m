% This function asks and places the player's ships
% in the battle plane

function [positions] = playerPlane()

% Creating a 9 by 9 plane of zeros 
playerPlane = zeros(9);
[rows cols] = size(playerPlane); % assigning the rows and columns of the plane

% Initialising row, column and position vecotor 
row = [];
column = [];
positions = [];

% Looping to place all 5 ships in the plane 
for i = 1:5
   
        % Prompting the user to place their ship in a perticular row and column
        fprintf('\n Ship: %d \n', i);
        row(i) = input(' Which row would you like to place your ship in: ');
        column(i) = input(' Which column would you like to place your ship in: ');
       
       situation = false; % Initialising situation variable 
        
  % Looping so that the player can't input a row and colum out side the
  % plane's parameter (9x9)
  while(situation ~= true)
    
    % If the input is within the parameter the condition is true 
    if ((row(i) > 0 && row(i) <= 9)&&(column(i) > 0 && column(i) <= 9))
        
        
        situation = true;
    
    else
        
        % If the input is not within the parameter the condition is not ture
        % and hence the player has to input a valid input again 
        fprintf('\n The row or column inputed is invalid for ship: %d', i);
        fprintf('\n Please input a valid row and column \n');
        row(i) = input(' Which row would you like to place your ship in: ');
        column(i) = input(' Which column would you like to place your ship in: ');
    
        
    end
    
      % Looping so that the player can't input the same position of the
      % ship again
      for j = 1:size(positions, 2)
           
          % looping until all 5 ships have different positions 
          while (row(i) == positions(1, j))&&(column(i) == positions(2, j))
             
            % Prompting the user to input a valid postion of the ship again
            fprintf('\n This postion for ship: %d is already taken by another ship', i);
            fprintf('\n Please input another position \n');
            row(i) = input(' Which row would you like to place your ship in: ');
            column(i) = input(' Which column would you like to place your ship in: ');
            
             situation_2 = false; % Initialising situation_2 variable 
        
      % Looping so that the player can't input a row and colum out side the
      % plane's parameter (9x9)
      while(situation_2 ~= true)

        % If the input is within the parameter the condition is true 
        if ((row(i) > 0 && row(i) <= 9)&&(column(i) > 0 && column(i) <= 9))


            situation_2 = true;

        else

            % If the input is not within the parameter the condition is not ture
            % and hence the player has to input a valid input again 
            fprintf('\n The row or column inputed is invalid for ship: %d', i);
            fprintf('\n Please input a valid row and column \n');
            row(i) = input(' Which row would you like to place your ship in: ');
            column(i) = input(' Which column would you like to place your ship in: ');

        end

      end
  
    end

      end   
      
      % Replacing a 0 to 1 in the playerPlane at the postion of the ship
      % chosen by the player
       playerPlane(row(i), column(i)) = 1;   
     
      
   
  end 

% Setting the postion vector to the row and column of the ship inputed 
 positions = [row;column]; 
end