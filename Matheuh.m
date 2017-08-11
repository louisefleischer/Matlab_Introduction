% Not a lot of new things today: just a little bit more math :)

% I am sorry if it's not clear, it's much easier with a drawing... 
clearvars 

% cleanup QUESTION: how do you declare a global vs. local variable? 
% ANSWER: basically all variables are local unless you specify global in
% the declaration of your variable the first time. Once you have a global
% variable, you can call it in different scripts or functions. You would
% use this mainly if you are working with constants (like gravity). I
% personnaly have yet never used a global variable in Matlab (now that I
% think about it, I surely should have). For more info, type <help global>
% in the command window


%% Triathlon
% First let's refresh those vectors we learnt about yesterday. And try out
% the story I told you yesterday. 

% EX: Last summer, James, Louise and Benoit formed a team to run a 
% Triathlon and now want to compare their velocity over their specific
% distances. 
% Louise swam 600m in 14 min, James cycled 20km in 56 min and it took
% Benoit 42 min to run the last 6.5 km. Using Matlabs vectors and
% operations, find out who was the fastest over the race (compare in km/h).

LDist = 0.6;
JDist = 20; 
BDist = 6.5;
LTime = (14/60);
JTime = (56/60);
BTime = (42/60);

%VS: now I will use the element by element operation you taught me about in the
%last assignment and which we spoke about on the phone.

MeuhDist = [LDist; JDist; BDist];
MeuhTime = [LTime; JTime; BTime];

MeuhVelocities = MeuhDist./MeuhTime;
disp('The following list is displays the velocities of the teameuh!')
disp(MeuhVelocities);
LouLouVelo = MeuhVelocities(1)
JameseuhVelo = MeuhVelocities(2)
BenVelo = MeuhVelocities(3)

disp('Jameseuh travelled at the greatest velocity in the race (he had a velo :))')
%VS I know this could have been done much more easily by not including all
%of the variables and just using the numbers, but I wanted to do a little
%coding finger memory practice. Also I need to again figure out the
%difference in this language between global and local variables and how to
%declare them as such. 

%% Trigonometry
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

% VS:well, x^2 + y^2 = r^2, no? 

% LM: this is perfectly mathematically correct. Now try writing those
% cylindrical coordinates as an inverse rotation (instead of turning the
% rtheta plane by a -theta angle to get the xy coordinates, turn the xy
% plane by a theta angle to get the rtheta coordinates)

cylind_coor = [sqrt((cartesian_coor(1))^2+(cartesian_coor(2))^2); ...
               atan2(cartesian_coor(2), cartesian_coor(1)); ...
               cartesian_coor(3)]
           
           %VS:did you want this like this or with the xyz values instead?
           

%% Exercise
%EX: what is the the cylindrical coordinates of the B of Bruno Paillard on
% a champagne bottle (cartesian coordinates = [0.866; -0.5; 0.15]) The
% angle should be given in degrees.

% (theta/180)*pi will convert the degree figure into radians for matlab to
% use: 

xbp = 0.866
ybp = -0.5
zbp = 0.15

% LM: if you declare variables like xbp, ybp, zbp, it is good coding
% practice to insert them in the future calculations so that if you have
% values to change, you only change them once. For instance, in the cylind_coorBP below,
% replace the numeric values by the variables you declared above.

cylind_coorBP = [sqrt((0.866)^2+(-0.5)^2); ...
               (atan2(-0.5, 0.866)/180)*pi; ... % LM: Are you sure about your angle conversion? You also have some superfluous parenthesis here
               0.15];

% LM: try it with the other method too 
           
disp(cylind_coorBP);

%this is a bit horrifying!Now I will try with the matlab automated version of this: 

[bptheta, bprho, bpz] = cart2pol(xbp, ybp, zbp);
disp('NOTE HERE');
disp([bptheta, ((bprho/180)*pi), bpz]) %but here the answer is in radians??
% LM: it is indeed in radian, so if you want to convert to degrees you can
% just multiply the value of bptheta by the correct number.

%I need help here...
% LM: Super Salers coming to your rescue!

%% Rotational matrices
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
        0 0 1] %rotate around the z axis
    
Mrotx = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
    
Mroty = [-sin(theta) 0 cos(theta); 0 1 0; cos(theta) 0 sin(theta)];

cartesian_coor = Mrot*[r; 0; z];
% Much better no? VS: HORRIFYING IT'S SO LONG AGO...
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

% LM: New Intermediate exercise here:
% NEW EXERCISE: the AIRPLANE Exercise!!!
% Your plane is on hold waiting to leave the SJC airport holding pattern to
% go to LA. He is in steady flight in an helix (means that the sum of the
% forces in the planes referential is equal to zero).  Look at the picture 
% Helix_plane in this repository. 
% g = 10 m/s^2
% Your airplane weighs 20 kg, flies at 30 mps, it is going up a 5 degree slope and the
% banking angle is of 40 deg. 
% With what radius is it turning?
% The Drag of your airplane is 5 Newtons, what thrust do you put? What is
% in it terms of power?

% this will require a little bit of projections, no rotational matrices but
% it is to practice trigonometry in the engineering world

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

r = 6371; %this is earth's radius








































































% r = Earth_radius

























































% (steps_hint: find the relation ship between GPS coordinates and
% spherical coordinates then apply the transformation
% above)



