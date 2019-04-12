clear all;
close all;
clc;
load('nodes.mat');

figure (1)
obs = [220,200,150,200,140,100];
patch(obsgen(obs));
hold on;

q_end = nodes(length(nodes));
i=1;
while q_end.parent ~= 0
    start = q_end.parent;
    line([q_end.coord(1), nodes(start).coord(1)], [q_end.coord(2), nodes(start).coord(2)], [q_end.coord(3), nodes(start).coord(3)], 'Color', 'r', 'LineWidth', 4);
    viaPoint(:,i) = q_end.coord;
    i=i+1;
    hold on
    q_end = nodes(start);
end
hold off

spline(viaPoint(1:2,:),1);
spline(viaPoint(2:3,:),2);
spline(viaPoint([1,3],:),3);

