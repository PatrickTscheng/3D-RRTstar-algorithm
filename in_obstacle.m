function fo = in_obstacle(point_coord, o)
fo = 1;
for i = 1:1:3
    if point_coord(i) < o(i) || point_coord(i) > o(i)+o(i+3)
        fo = 0;
        break;
    end
end