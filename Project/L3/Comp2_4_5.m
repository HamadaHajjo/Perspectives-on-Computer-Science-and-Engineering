g = Game2048Simulator(@myAI4);
    simulate(g, 1000)
    viewResult(g, 15)
h = Game2048Simulator(@myAI5);
    simulate(h, 1000)
    viewResult(h, 15)
    
myAI4 = g.Result.Score;
myAI5 = h.Result.Score;

[h,p] = ttest2(myAI4,myAI5);

mean4 = mean(myAI4);
mean5 = mean(myAI5);