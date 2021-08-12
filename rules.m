% This function dispays the rules of the game 

function[] = rules()
% Writing the rules of the game 
fprintf('\n                                       RULES AND INSTRUCTIONS OF THE GAME                                                         \n');
fprintf('\n');
fprintf('\n 1) Each player has 5 batlle ships \n');
fprintf('\n 2) The player have to place their ships in the battle plane, the battle plane is situated in a 9 by 9 plane (9 rows by 9 columns) \n');
fprintf('\n 3) The plane will be visible once the player has placed their ships \n');
fprintf('\n 4) Once the plane is visible the left side of the plane will displayer the players plane along with the position of their ships \n');
fprintf('\n 5) Each ship will be represented by a slinting line');
fprintf('\n 6) The right side of the plane on the other hand will display the enemy''s plane (the enemy is computer) \n');
fprintf('\n 7) The player won''t be able to see enemy''s battle ships until the game is over \n');
fprintf('\n 8) Each player has 15 attacks to do the most damage to the enemy \n');
fprintf('\n 9) The enemy''s plane is also a 9 by 9 plane hence the attacks should be coordinated within the plane \n');
fprintf('\n 10) Each time the player attacks, the enemy will also attack on the same time \n');
fprintf('\n 11) Every time the player attacks, the battle plane will be updated showing the position of the attack on the enemy''s plane \n');
fprintf('\n 12) The battle plane will also displayer the position of the enemy''s attack on the players plane \n');
fprintf('\n 13) If either the enemy or the player hits a ship, the position of the attack will turn into a black box \n');
fprintf('\n 14) If either the enemy or the player misses a ship, the position of the attack will turn into a grey box \n');
fprintf('\n 15) Points will be provided upon the number of ships destroyed \n');
fprintf('\n 16) Whoever has the most points wins \n');
fprintf('\n 17) At the end of the game results will be displayed \n');
fprintf('\n 18) At the end of the game, the battle plane will update for one last time showing the placements of the enemy''s battle ship \n');

end