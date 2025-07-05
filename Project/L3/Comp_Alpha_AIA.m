g = Game2048Simulator(@Alpha_25);
    simulate(g, 300)
    viewResult(g, 15)
h = Game2048Simulator(@myAIA4);
    simulate(h, 300)
    viewResult(h, 15)
    
Alpha_25 = g.Result.Score;
myAIA4 = h.Result.Score;

[h,p] = ttest2(Alpha_25,myAIA4);

meanAlpha = mean(Alpha_25);
meanAIA4 = mean(myAIA4);
%OBS:- I used this script to compare Alpha25 to the three new AIA that I
%created. I was just changing the name of the script to the name of the
%script that I want to compare Alpha 25 with. 