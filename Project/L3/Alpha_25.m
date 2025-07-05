function direction = Alpha_25(A)
B = convertToLogBoard(A); %convert the board
d = {'up', 'down', 'right', 'left'}; %the set of actions in the game
heuristicValues = zeros(1,4);
for i = 1:length(d)
Bnew = slide(B,d{i}); %Predictive state from action i
if isequal(Bnew ,B); %if action i does not change the state...
heuristicValues(i) = -Inf; %... then put heuristic to be -infinity
else
heuristicValues(i) = ... %otherwise, evaluate the state
heuristic0(Bnew);
end
end
%find the action of the maximum heuristic value
[valueMax, iMax] = max(heuristicValues);
direction = d{iMax}; %output the string
end
function u = heuristic0(B)
a = 0.25;
u = (1-a)*(sum(B(:) == 0))+a*(-sum(B(:))); 
end
function B =convertToLogBoard(B)
B(isnan(B)) = 1;
B = log2(B);
end