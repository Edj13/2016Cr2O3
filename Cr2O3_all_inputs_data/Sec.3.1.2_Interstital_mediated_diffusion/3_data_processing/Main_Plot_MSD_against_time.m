%%----------------------plot MSD vs. time, and compute diffusion coeffcient------------------------
startstep = 500;
file = 'MSD2000.data';
[ Ox, Oy, Oz, O, Crx, Cry, Crz, Cr] = textread(file,'%f %f %f %f %f %f %f %f', 'headerlines',startstep);
time = 0.1*(1:length(O));    %time unit - picosecond
YOxy = O-O(startstep);       %length unit - angstrom 
YCr = Cr-Cr(startstep);      %length unit - angstrom 

%%plot MSD  vs time
figure1 = figure(1);
axes1 = axes('Parent',figure1,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
box(axes1,'on');
hold(axes1,'on');
plot(time, YOxy,'Color',[0 0 0]);
xlabel('Time (ps)','Interpreter','latex');
ylabel('MSD (\AA$^2$)','Interpreter','latex');
xlim([0 1500])
ylim([-0.05 1.5*max(YOxy)])


figure2 = figure(2);
axes1 = axes('Parent',figure2,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
box(axes1,'on');
hold(axes1,'on');
plot(time,YCr,'Color',[0 0.447058826684952 0.74117648601532]);
xlabel('Time (ps)','Interpreter','latex');
ylabel('MSD (\AA$^2$)','Interpreter','latex');
xlim([0 1500])
ylim([-0.01 1.5*max(YCr)])


%fit MSD curve to obtain diffusivity
[xData, yData] = prepareCurveData( 6*time', YOxy*1e-4);  %unit --cm^2/s
ft = fittype( 'poly1' );
[fitOxygen, gof] = fit( xData, yData, ft );
fitOxygen

[xData, yData] = prepareCurveData( 6*time', YCr*1e-4);  %unit --cm^2/s
ft = fittype( 'poly1' );
[fitCr, gof] = fit( xData, yData, ft );
fitCr

