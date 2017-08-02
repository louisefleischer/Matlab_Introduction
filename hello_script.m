'Hello Cow World!'
%This is the most basic way of displaying I came across. While it
%displays the message, it does so as the answer of a function.
disp('Hello Cow World!')
%This next line of code utilizes the display function in its most basic
%form.
disp('Hello Cow World!');
%This is no different than the one above save for the semicolon which in
%other functions would suppress the code line from being printed in the
%command window in theory, but I don't seem to be able to see a difference
%at all here...
Salmeuhtation = 'Hello Cow World!';
   Salmeuhtation
%Here I have set a variable `Salmeuhtation` equal to the desired text and
%then simply declared the variable, leading to the expression of the
%variable and its definition in an equality statement.
Salmeuhtation; 
%here I have added a semicolon which suppresses the variable equality
%expression seen above.
disp(Salmeuhtation);
%Here I have, instead of declaring the variable, used the display function
%to show the definition of the variable. Note that here, as with the other
%iterations of the display function, no single quotes are visible.
Salmeuhtation = 'Hello Cow World!';
addressee = 'VacheLouLou:';
veritas = ' We were made to graze together.';
conclusion = 'MeuhMeuh!';
   X = [Salmeuhtation, '--', addressee, veritas, '...', conclusion];
       disp(X);
%This is a somewhat more involved version of displaying text, but it allows
%for different versions of the same format to be displayed using different
%variables. Another demonstration follows, with a mixture of new and old
%variables:
conclusion1 = 'N-4!';
addressee1 = 'VacheLouiseuh:';
   Y = [Salmeuhtation, '--', addressee1, veritas, '...', conclusion1];
       disp(Y);

%That is it for now on the ways to display the message I figured out while
%noodling around, is fprintf another way I should be looking at? sprintf?
%Anyways let me know :)