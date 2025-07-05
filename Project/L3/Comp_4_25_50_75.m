g = Game2048Simulator(@myAI4);
    simulate(g, 300)
    viewResult(g, 15)
h = Game2048Simulator(@Alpha_25);
    simulate(h, 300)
    viewResult(h, 15)
    
myAI4 = g.Result.Score;
Alpha_25 = h.Result.Score;

[h,p] = ttest2(myAI4,Alpha_25);

mean4 = mean(myAI4);
Alpha_25 = mean(Alpha_25);
%OBS:- I have used this script for all 3 Alpha values. I was just changing
%the name of the Alpha file then running the code. 