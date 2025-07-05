function direction = myAIA(A)
B = convertToLogBoard(A); %convert the board
d = {'up', 'left', 'down', 'right'}; %the set of actions in the game
heuristicValues = zeros(1,4);
for i = 1:length(d)
Bnew = slide(B,d{i}); %Predictive state from action i
if isequal(Bnew ,B); %if action i does not change the state...
heuristicValues(i) = -Inf; %... then put heuristic to be -infinity
else
heuristicValues(i) = ... %otherwise, evaluate the state
heuristic0(Bnew) + heuristic1(B);
end
end
%find the action of the maximum heuristic value
[valueMax, iMax] = max(heuristicValues);
direction = d{iMax}; %output the string
end
function u = heuristic0(B)
u = B(1,1)*100 + B(1,2)*90 + B(1,3)*80 + B(1,4)*70
+ B(2,1)*16 + B(2,2)*18 + B(2,3)*20 + B(2,4)*60;
end
function u = heuristic1(B)
a = 0.25;
u = (1-a)*(sum(B(:) == 0))+a*(-sum(B(:)));
end
function B =convertToLogBoard(B)
B(isnan(B)) = 1;
B = log2(B);
end