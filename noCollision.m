function nc =  noCollision(n2,n1,o)
M = 20;
x_coord = linspace(n2(1),n1(1),M);
y_coord = linspace(n2(2),n1(2),M);
z_coord = linspace(n2(3),n1(3),M);
nc = 1;
for i = 1:1:M
    point_coord = [x_coord(i) y_coord(i) z_coord(i)];
    if in_obstacle(point_coord, o) 
        nc = 0;
        break;
    end
end
end