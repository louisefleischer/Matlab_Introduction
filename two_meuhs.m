%TWOMEUHS This script is a Matlab exercise to explain the different types
% of meuhs in the Matlab environment. Don't be fooled though, none is as
% graceful as the Meuh de Salers.

% run this script now

% VachesSalers: why is this section partitioned from below? is that done by
% the double %? and then I tried it and in fact it is! Detectiveuhmeuhmeuh!

%% CLASSES
% Matlab's three main classes:
a_meuh = 'Meuh'; %class type is `char`
one_meuh = 1; %class type is `double`, or double precision floating point number
true_meuh = false; %class type is `logical`, clearly Boolean

% You can find the class of a variable by typing:
type = class(a_meuh);
disp(type)

% EXERCISE: comment next to the variables above, what class each variable is part of.
type1 = class(a_meuh);
type2 = class(one_meuh);
type3 = class(true_meuh);
   disp(type1);
   disp(type2);
   disp(type3);
% Matlab is designed for mathematics and therefore it is very easy to
% handle numbers.

disp(3 + 4);
disp(2 / 5); 
R = 10;
disp(2*pi*R);

% EXERCISE:
a = 3;
b = 5;
c = 10;
d = (1/8); % change that value to make the result true
disp(a + b/(c*d) == 7)%now a 1 has appeared, which is the boolean value
%for `true` so I assume this is now done. 

% But what is that == sign?! It is Matlab's way of assessing if a statement
% is true. It takes the value on the left and compares it to the one on the
% right. If they are both the same, the program returns true if not, it
% returns false.

% EXERCISE: Find the way to assess statements with for or, nor, not, nand
% with an explication of what those assessments do
% also make this statement true:

l = 1/2; % change this value -> done
j = 'orange'; % change this 
true_meuh = true; %here I am redefining `true_meuh` to be true

statement = and(l == 1/2, strcmp(j,'orange')&&true_meuh)%had to look up what
%strcmp (string comparison) and also what the && short circuit operator was

LogOps1 = false;
LogOps2 = false;
LogOps3 = true; 
LogOps4 = true;

statement1 = or(LogOps1, LogOps3)
statement2 = or(LogOps1, LogOps2)
%this is the logical operation `or`, where
%if any of the statements componenents are true, the statement is true. If
%all are false, then the statement is false as is the case in the second
%statement.

statement3 = not(and(LogOps1, LogOps3))
statement4 = not(and(LogOps3, LogOps4))
%the first one is an and statement which is false, but the not means that 
%a true value is returned because it is true that it is not the case that
%the statement is true. The second one, where the statement is true,
%returns false because it is false that it is not the case that the
%statement is true.

statement5 = not(or(LogOps1, LogOps2))
statement6 = not(or(LogOps3, LogOps4))
%here we have the same sort of thing: the or statement is false, so the
%returned value is true because it is not the case that the statement is
%true. second one is false because it is not the case that the inner statement
%is false.

statement7 = and(LogOps1, LogOps2)
statement8 = and(LogOps3, LogOps4)
%with and statements both components must be true for the statement to be
%true, and so we see that statement 7 is false and statement 8 is true.

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

%VachesSalers: there are SO MANY words I don't understand in here...for
%instance I do not know when I look up the strcat and strsplit what the
%difference between in comp science what cell arrays and strings and
%character array inputs etc. do you know all of this? or is it just
%experience getting what you need from the programs that gives you this
%information? my own question was answered later by experience and talking
%to my meuh.


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

SQUARE = A.*B;% this what you were looking for?

% To access a number in an array, you can call M(i,j) where i is the row
% number and j the column number

% EXERCISE: From SQUARE return the number 9

SQUARE(3,3)

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

cellmeuhdeux = {a_meuh, heu_meuh, one_meuh, cell_meuh}%it seems like this
%is all that is needed...

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
disp('end of Meuhs...MeuhMeuhMeuhMeuh')

