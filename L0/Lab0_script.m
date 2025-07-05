x= linspace(0,10,100);
Area_circle = 2*pi*x.^2;
plot(x,Area_circle,'g')
xlabel('radius/side')
ylabel('Area circle/square')
ylim([0 700])
ax = gca;
ax.FontSize = 20;
hold on
Area_square = x.^2;
plot(x,Area_square,'r')
legend({'Circle area','Square area'},'location','northwest')
grid on 
hold off