% Battle Ships Game 

% Clearing the command and workshop windpw before staring the program 
clear;
clc;

% Introducing the player to the game 
fprintf('Hello there, Wellcome to Battle Ships!!! \n');
rules();
fprintf('\n');
fprintf('\n');

% assigning function to variables 
number_1 = number_1();
number_2 = number_2();
number_3 = number_3();
number_4 = number_4();
number_5 = number_5();
number_6 = number_6();
number_7 = number_7();
number_8 = number_8();
number_9 = number_9();


% Starting the game 
fprintf('\n --------------------- LETS THE GAMES BEGIN---------------------- \n');
fprintf('\n');

% Assigning position variable to function playerPlane 
position = playerPlane(); % The function playerPlane assigns position of places the player's ships 


% Calling the function battlePlane 
battlePlane = plane(number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9, position);

% Time delay for 4 seconds 
pause(4); 

% Assigning positionComp variable to function playerPlane and calling enemyPlane 
positionComp = computerPlay();
enemyPlane = compPlane(number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9);

% Displaying the battle plane which includes the players plane and the enemy's plane
battlePlane = [battlePlane enemyPlane];
imshow(battlePlane);

% Initialising points for player and computer 
points = 0; % Player's points 
compPoints = 0; % Computer's points 
fprintf('\n');

% Displing the number of attacks a player can do
fprintf('\n You have 15 attacks to do the most damage to your enemy \n'); 

% Looping to allow the player and computer to attack 15 times consecutively
for i = 1:15
    
    fprintf('Attacks left: %d \n', 16-i); % Displaying attacks left 
    
    % Calling the function playerAttack and compAttack 
    [points, positionComp, battlePlane] = playerAttack(points, positionComp, battlePlane); 
    [compPoints, position, battlePlane] = compAttack(compPoints, position, battlePlane);
    
    imshow(battlePlane); % Displaying/updating the battle plane after each attack
    
end

% Displaying the total points for computer and player 
fprintf("The Player's total points are : %d \n", points);
fprintf("The Enemy's total points are : %d \n", compPoints);


% Determining if the end reuslt was a win, tie or a loose for player and computer 
if (points > compPoints)
    
    fprintf("\n Player wins!!!!! \n");
    
elseif (points == compPoints)
        
        fprintf("\n Its a tie!!!!! \n");
        
else 
    
    fprintf("\n Enemy wins!!!!! \n");
    
end


% Displaying the enemy's (computer's) battle ships at the end of the game  

% Verifying computer's 5 ships 
for i = 1:5 
       
    % Looping to go through each row in the computer's (enemy's) plane 
        for k = 1:50
            
      % Putting a condition to display the computers ships
            if (positionComp(1, i) ~= 0)
            
        % Creating a slinting line of balck pixels at the posotion of computer's ships in the battle plane 
        battlePlane((positionComp(1, i)*50)+k, (positionComp(2, i)*50)+k+500) = 0;
        
            end
        
        end
  
end
    
% Showing the final battle plane 
imshow(battlePlane);


    



