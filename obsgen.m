function obstacle = obsgen(obs)

obstacle.Vertices = [obs(1) obs(2) obs(3); obs(1) obs(2)+obs(5) obs(3);...
                    obs(1)+obs(4) obs(2)+obs(5) obs(3); obs(1)+obs(4) obs(2) obs(3);...
                    obs(1) obs(2) obs(3)+obs(6); obs(1) obs(2)+obs(5) obs(3)+obs(6);...
                    obs(1)+obs(4) obs(2)+obs(5) obs(3)+obs(6);obs(1)+obs(4) obs(2) obs(3)+obs(6)];
obstacle.Faces = [1 2 3 4; 2 6 7 3; 4 3 7 8; 1 5 8 4; 1 2 6 5; 5 6 7 8];
obstacle.FaceColor = 'y';

end