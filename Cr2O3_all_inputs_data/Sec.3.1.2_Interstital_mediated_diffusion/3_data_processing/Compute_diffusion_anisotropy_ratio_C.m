%%----------------------plot MSD vs. time, and compute diffusion coeffcient------------------------
startstep = 500;
file = 'MSD1800.data';
[ Ox, Oy, Oz, O, Crx, Cry, Crz, Cr] = textread(file,'%f %f %f %f %f %f %f %f', 'headerlines',startstep);
time = 0.1*(1:length(O));    %time unit - picosecond
YOxy = O-O(startstep);       %length unit - angstrom 
YCr = Cr-Cr(startstep);      
Oc =   Oz-Oz(startstep);
Oab = (Ox-Ox(startstep)) + (Oy-Oy(startstep));
Crc = Crz-Crz(startstep);
Crab  = (Crx-Crx(startstep)) + (Cry-Cry(startstep));

%%plot Oxygen MSD in 3d, ab-plan, c-axis
figure1 = figure(1);
axes1 = axes('Parent',figure1,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
box(axes1,'on');
hold(axes1,'on');
plot1(1)= plot(time, YOxy/6);
hold on
plot1(2)=plot(time, Oab/4);
plot1(3)=plot(time, Oc/2);
set(plot1(1),'DisplayName','3d');
set(plot1(2),'DisplayName','ab-plane');
set(plot1(3),'DisplayName','c-axis');
xlabel('Time (ps)','Interpreter','latex');
ylabel('MSD (\AA$^2$)','Interpreter','latex');
xlim([0 1200])
ylim([-0.002 2*max(YOxy/6)])
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.60149813156003 0.199481867609351 0.267415726117874 0.180483587536581],...
    'FontSize',12);

%%plot Cr MSD in 3d, ab-plan, c-axis
figure2 = figure(2);
axes1 = axes('Parent',figure2,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
box(axes1,'on');
hold(axes1,'on');
plot1(1)= plot(time, YCr/6);
hold on
plot1(2)=plot(time, Crab/4);
plot1(3)=plot(time, Crc/2);
set(plot1(1),'DisplayName','3d');
set(plot1(2),'DisplayName','ab-plane');
set(plot1(3),'DisplayName','c-axis');
xlabel('Time (ps)','Interpreter','latex');
ylabel('MSD (\AA$^2$)','Interpreter','latex');
xlim([0 1200])
ylim([-0.002 4*max(YCr/6)])


