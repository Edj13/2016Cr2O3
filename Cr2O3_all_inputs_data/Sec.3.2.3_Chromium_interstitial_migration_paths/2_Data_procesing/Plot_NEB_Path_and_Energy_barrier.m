figure1 = figure;
% Create axes
axes1 = axes('Parent',figure1,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-0.5 10]);
box(axes1,'on');
hold(axes1,'on');
P1 = load('p1.lammps');
totalreplica = 40;
start = 9;
A = P1;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-1','MarkerSize',9,'Marker','o',...
    'Color',[0 0 0]);
xlabel('Reaction coordinate','FontSize',13.2);
ylim([0 2])
ylabel('Energy (eV)','FontSize',13.2);
title('Cr interstital migration barrier','FontSize',13.2);
