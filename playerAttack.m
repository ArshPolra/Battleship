% This function lets the plyer choose a position for attack in the enemy's
% plane 
    
function[totalSum, compShip, board] = playerAttack(totalSum, compShip, board)
    
    % Prompting for attack row and columns 
    attackRow = input('Which row do you want to attack: ');
    attackColumn = input('Which column do you want to attack: ');
    sum = 0; % initialising sum variable
    situation = false; % Initialising situation variable 
    
    % Looping so that the player can only in put a valid attack position (within the 9
    % by 9 enemy plane)
    while (situation ~= true)

    % Placing a situation so that the player can not input invalid attack
    % rows and columns 
    if ((attackRow > 9)||(attackColumn <= 0))||((attackColumn > 9)||(attackRow <= 0))
   
    % Asking the player to inout again if the condition is met 
    fprintf('This is an invalid input \n');
    attackRow = input('Which row do you want to attack: ');
    attackColumn = input('Which column do you want to attack: ');
    
    else 
        
        % If the input is valid then the game proceds 
        situation = true; 

    end
    
    
    end
    
   % Determining if the attack was a hit or a miss
   for j = 1:5
    
     % Placing a condition if the attack is a hit 
    if (attackRow == compShip(1, j))&&(attackColumn == compShip(2,j))
        
       
        compShip(:,j) = 0;
        sum = sum+1;
    
    end
 
   end
  
   % Taking action if the attack is a hit 
   if (sum == 1)
       
       % Giveing a point to the player and displaying its hit 
       fprintf('PLAYER HITS!!! \n'); 
       totalSum = totalSum+1;
      
     % Turing that box in the grid of the boad(battle plane) into a black box to indicate a hit 
       for i = 1:50
           
           for k = 1:50
               
            % Turning the white pixels at that perticular position to balck
            board((attackRow*50)+i, (attackColumn*50)+k+500) = 0;
           
           end
           
       end   
   else 
       
        % Taking action if the attack is a miss
       fprintf('PLAYER MISSES!!! \n'); % Displaying a if attack was a miss
       
       % Turing that box in the grid of the boad(battle plane) into a grey box to indicate a miss 
       for i = 1:50
           
           for k = 1:50
               
            % Turning the white pixels at that perticular position to grey
            board((attackRow*50)+i, (attackColumn*50)+k+500) = 0.7;
           
           end
           
       end  
    end
 end
   
