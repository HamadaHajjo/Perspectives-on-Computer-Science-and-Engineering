g = Game2048Simulator(@myAI4);
    simulate(g, 300)
    viewResult(g, 15)
h = Game2048Simulator(@myAIA4);
    simulate(h, 300)
    viewResult(h, 15)
    
myAI4 = g.Result.Score;
myAIA4 = h.Result.Score;

[h,p] = ttest2(myAI4,myAIA4);

mean4 = mean(myAI4);
myAIA4 = mean(myAIA4);