% This function randomly generates position for attack for the computer 
    
function[totalSum, playerShip, board] = compAttack(totalSum, playerShip, board)
    
    rng('shuffle'); % Generating a random seed
    % Generating random attack row and columns for the computer 
    attackRow = randi([1,9]);
    attackColumn = randi([1,9]);
    sum = 0;

   % Determining if the attack was a hit 
   for j = 1:5
     % Placing a condition if the attack is a hit 
    if (attackRow == playerShip(1, j))&&(attackColumn == playerShip(2,j))
        
        playerShip(:,j) = 0;
        sum = sum+1;
    
    end
 
   end
   % Taking action if the attack is a hit 
   if (sum == 1)
       
       % Giveing a point to the computer and displaying its hit 
       fprintf('COMPUTER HITS!!! \n');
       totalSum = totalSum+1;
       
       % Turing that box in the grid of the boad(battle plane) into a black box to indicate a hit 
        for i = 1:50
           
           for k = 1:50
           % Turning the white pixels at that perticular position to balck
            board((attackRow*50)+i, (attackColumn*50)+k) = 0;
           
           end
           
       end   
       
       
   else 
       
       % Taking action if the attack is a miss
       fprintf('COMPUTER MISSES!!! \n');
       
       % Turing that box in the grid of the boad(battle plane) into a grey box to indicate a miss 
        for i = 1:50
           
           for k = 1:50
           
            % Turning the white pixels at that perticular position to grey
            board((attackRow*50)+i, (attackColumn*50)+k) = 0.7;
           
           end
           
       end   
       
   end
   

end