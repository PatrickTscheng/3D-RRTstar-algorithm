function nc =  noCollision(n2,n1,o)
x_coord = linspace(n2(1),n1(1),80);
y_coord = linspace(n2(2),n1(2),80);
z_coord = linspace(n2(3),n1(3),80);
nc = 1;
for i = 1:1:80
    point_coord = [x_coord(i) y_coord(i) z_coord(i)];
    if in_obstacle(point_coord, o) 
        nc = 0;
        break;
    end
end
end