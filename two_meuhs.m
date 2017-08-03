%TWOMEUHS This script is a Matlab exercise to explain the different types
% of meuhs in the Matlab environment. Don't be fooled though, none is as
% graceful as the Meuh de Salers.

% run this script now

% 

%% CLASSES
% Matlab's three main classes:
a_meuh = 'Meuh'; 
one_meuh = 1; 
true_meuh = false;

% You can find the class of a variable by typing:
type = class(a_meuh);
disp(type)

% EXERCISE: comment next to the variables above, what class each variable is part of.

% Matlab is designed for mathematics and therefore it is very easy to
% handle numbers.

disp(3 + 4);
disp(2 / 5); 
R = 10;
disp(2*pi*R);

% EXERCISE: fill those lines:

a = 3;
b = 5 ;
c = 10;
d =  1; % change that value to make the result true
disp(a + b /(c*d) == 7 )

% But what is that == sign?! It is Matlab's way of assessing if a statement
% is true. It takes the value on the left and compares it to the one on the
% right. If they are both the same, the program returns true if not, it
% returns false.

% EXERCISE: Find the way to assess statements with for or, nor, not, nand
% with an explication of what those assessments do
% also make this statement true:

l = 1; % change this value
j = 'blue'; % change this 

statement = and(l == 1/2, strcmp(j,'orange')&&true_meuh)


% you can do similar actions with characters but you have to call specific
% functions (that replace + and -). Each class has some specific functions
% embedded in Matlab 

a = 'bonjour'; % note that we are overwriting a and b
b = ' darling';
c = strcat(a,b)
disp(c);
disp(strsplit(c));

% if you see a function that you don't know, you can type help <function_name> 
% in the command Window and Matlab will give you all sorts of informations
% on how to call this function and what the options are.


%% STORING

% You will soon see that you will need to handle arrays with dozens of
% numbers. Matlab was made for that! The software is though around matrices.
% This is how you write matrices:

A = [1 2 3 4] % row vector
B = [1; 2; 3; 4] % column vector
C = [1 2; 3 4] % 2 by 2 matrice

% You can also make all linear algebra operations on matrices. Here are a
% few examples

A_transpose = A.'
diag(C)
D = vertcat(B, A_transpose)

% EXERCICE: create a 4 by four matrice with square values of 1,2,3 and 4
% using the element by element multiplication of matlab (look it up!)

% SQUARE = ;% uncomment this line

% To access a number in an array, you can call M(i,j) where i is the row
% number and j the column number

% EXERCISE: From SQUARE return the number 9


% It's easy to handle numbers in matrices, but it's much harder to handle
% words
heu_meuh = ['Je' 'te' 'M']

% This matrice of words just concatenates all of the word it contains. A
% good substitute is cell matrices:

heu_meuh = {'Je' 'te' 'M'}

% cell matrices are fantastic because they allow to mix variables of
% different classes in the same table
cell_meuh = {'meuh', 4, 'you'}

% EXERCISE: Create a cell array which contains a_meuh, heu_meuh, one_meuh
% and cell_meuh

% I will quickly mention the structure storage. We will be using this much
% later but you can start getting acquainted with the syntax:

herd = struct;
herd.name = 'Salers';
herd.number = 30;
herd.significant_cows = {'Jacqueline', 'Catherine'};
herd.food = 'cantal';
herd.direction = [0;1];

disp(herd)
% If you look on the right, you can see the workspace of this script. This
% is where all your variables and there names are stored. Click on herd to
% see what a structure looks like.

% Submit this file and don't forget to update the README with what you are
% learning!
