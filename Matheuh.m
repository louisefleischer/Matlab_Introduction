% Not a lot of new things today: just a little bit more math :)

% I am sorry if it's not clear, it's much easier with a drawing...

clearvars % cleanup 

% First let's refresh those vectors we learnt about yesterday. And try out
% the story I told you yesterday. 

% EX: Last summer, James, Louise and Benoit formed a team to run a 
% Triathlon and now want to compare their velocity over their specific
% distances. 
% Louise swam 600m in 14 min, James cycled 20km in 56 min and it took
% Benoit 42 min to run the last 6.5 km. Using Matlabs vectors and
% operations, find out who was the fastest over the race (compare in km/h).




% Now a little bit of trigonometry and a little bit of space

% First let's tell Matlab that we are working with symbolic objects (that 
% have no assigned values)

syms x y z r theta phi psi

% The formula to go from cartesian coordinates (x,y,z) to cylindrical
% coordinates (r, theta, z) is as follows:
% x = r*cos(theta)
% y = r*sin(theta)
% z = z;
% In Matlab terms it can be written as follows:
cylind_coor = [r; theta; z]
cartesian_coor = [x;y;z]

cartesian_coor = [cylind_coor(1)*cos(cylind_coor(2)); ... % these dots allow to continue onto the following line
                  cylind_coor(1)*sin(cylind_coor(2)); ...
                  cylind_coor(3)]
              
% EX: write the inverse relationship (cylind_coor = f(cartesian_coor))


% EX: what is the the cylindrical coordinates of the B of Bruno Paillard on
% a champagne bottle (cartesian coordinates = [0.866; -0.5; 0.15]) The
% angle should be given in degrees.


% Look again at the change of coordinates above. That is how you dealt with
% trigonometry in the old world. The New World (that of linear Algebra) is
% just so much better. Here is why:
% Let's go back to those cylindrical coordinates. If you take a piece of
% paper and try to draw a point with the coordinates [r,theta,z], what
% would you do? You would look at the x,y,z space, go up z, turn draw a
% line of norm r on the xy plane and than rotate that line with an angle of
% theta compared to the x axis. 
% In linear algebra, this can be written as such:
cartesian_coor = z*[0;0;1]+[cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0;0 0 0]*[1; 0; 0]*r;
% or again:
Mrot = [cos(theta) -sin(theta) 0; ...
        sin(theta) cos(theta) 0; ...
        0 0 1] 
cartesian_coor = Mrot*[r; 0; z];
% Much better no?
% Mrot is called a rotational matrix, it basically takes the xy plane and
% rotates it by an angle of theta.

% Did you ever wonder why cylindrical and spherical coordinates where
% mixing distances (r,z) and angles (theta). Well here is why!
% In cartesian coordinates, you can define a point by three distances
% (x,y,z)
% In cylindrical coordinates, you can define a point by two distances(r,z) 
% and one angle (theta)
% In spherical (/polar) coordinates, you can define a point by one distance (r) and
% two angles (theta phi)
% Just as we did with the cylindrical coordinates, we can write the
% transformation of spherical coordinates to cartesian coordinates as a
% succession of one translation (r) and two rotations (one of an angle psi
% and one of an angle phi)

% EX: looking up on the internet what the relationship is between x,y,z and
% r,theta,psi (google angle names might be different) write the rotation
% matrices for theta and phi. Only by running matlab, you should now be able
% to grab the old version relationship (the one where it's a system of
% equations)

Mrot_theta = ones(3); % this is matlab's 3 by 3 identity matrice
Mrot_phi = ones(3); % you have to write the right matrices here

cartesian_coor = Mrot_theta * Mrot_phi * [r; 0; 0];

%EX: My house's coordinates are N45.111676, E2.279111 what are my house's
% cartesian coordinates? (hints at the end if needed)





































































% r = Earth_radius

























































% (steps_hint: find the relation ship between GPS coordinates and
% spherical coordinates then apply the transformation
% above)



