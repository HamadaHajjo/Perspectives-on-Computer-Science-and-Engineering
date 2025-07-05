function direction = myAIA4(A)
B = convertToLogBoard(A); %convert the board
d = {'up', 'down', 'right', 'left'}; %the set of actions in the game
heuristicValues = zeros(1,4);
for i = 1:length(d)
Bnew = slide(B,d{i}); %Predictive state from action i
if isequal(Bnew ,B); %if action i does not change the state...
heuristicValues(i) = -Inf; %... then put heuristic to be -infinity
else
heuristicValues(i) = ... %otherwise, evaluate the state
heuristic0(Bnew)+heuristic1(Bnew);
end
end
%find the action of the maximum heuristic value
[valueMax, iMax] = max(heuristicValues);
direction = d{iMax}; %output the string
end
function u = heuristic0(B)
u = B(1,1)*24 + B(1,2)*26 + B(1,3)*28 + B(1,4)*30;
+B(2,1)*22 + B(2,2)*20 + B(2,3)*18 + B(2,4)*16;
+B(3,1)*8 + B(3,2)*10 + B(3,3)*12 + B(3,4)*14;
+B(4,1)*6 + B(4,2)*4 + B(4,3)*2 + B(4,4)*1;
end
function u = heuristic1(B)
a = 0.25;
u = (1-a)*(sum(B(:) == 0))+a*(-sum(B(:)));
end
function B =convertToLogBoard(B)
B(isnan(B)) = 1;
B = log2(B);
end