load Person_139.mat
plot(Person_139.run,'.','color', 'g');
hold on
plot(Person_139.rest,'.','color', 'k')
xlabel('Days','FontSize', 14); 
ylabel('Pulses','FontSize', 14);
legend('walking','Runing')
hold off
rest_first_half = Person_139.rest(1:182);
rest_second_half = Person_139.rest(183:365);
[h,p] = ttest2(rest_first_half, rest_second_half);
[h,p] = ttest2(rest_first_half, rest_second_half, 'Tail', 'right');