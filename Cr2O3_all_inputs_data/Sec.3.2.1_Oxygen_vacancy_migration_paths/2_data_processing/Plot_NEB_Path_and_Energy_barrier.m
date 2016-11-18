figure1 = figure;
% Create axes
axes1 = axes('Parent',figure1,'YMinorTick','on','XMinorTick','on',...
    'TickLength',[0.02 0.025],...
    'FontSize',12);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-0.5 10]);
box(axes1,'on');
hold(axes1,'on');
P1 = load('P1.lammps');
P2 = load('P2.lammps');
P3 = load('P3.lammps');
P4 = load('P4.lammps');
P5 = load('P5.lammps');
totalreplica = 40;
start = 9;
A = P1;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-1','MarkerSize',9,'Marker','o',...
    'Color',[0 0 0]);
hold on
A = P2;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-2','MarkerSize',9,'Marker','square',...
    'Color',[1 0 0]);
A = P3;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-3','MarkerSize',9,'Marker','diamond',...
    'Color',[0.749019622802734 0.749019622802734 0]);
A = P4;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-4','MarkerSize',9,'Marker','v',...
    'Color',[0 0.447058826684952 0.74117648601532]);
A = P5;
plot(A(1+start:2:totalreplica+start),A(2+start:2:totalreplica+start)-A(2+start),'DisplayName','path-5','MarkerSize',9,'Marker','+',...
    'Color',[0.850980401039124 0.325490206480026 0.0980392172932625]);
xlabel('Reaction coordinate','FontSize',13.2);

ylabel('Energy (eV)','FontSize',13.2);
title('Oxygen vacancy migration barrier','FontSize',13.2);
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.141795871376495 0.639704672324903 0.223033518637686 0.261154602870451]);