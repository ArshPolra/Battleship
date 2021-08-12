function [positionsComp] = computerPlay()
compPlane = zeros(9);

% disp(compPlane);

[rows cols] = size(compPlane);

row = [];
column = [];
positionsComp = [];
rng('shuffle');


for i = 1:5
   
  
        row(i) = randi([1,9]);
        column(i) = randi([1,9]);
       
       
       
      for j = 1:size(positionsComp, 2)
      
          while (row(i) == positionsComp(1, j))&&(column(i) == positionsComp(2, j))
              
              row(i) = randi([1, 9]);
              column(i) = randi([1, 9]);
       
              
          end
          
      
      
      end   
      
       compPlane(row(i), column(i)) = 1;   
      
   
      
      
      
   
end 

positionsComp = [row;column]; 

    
end