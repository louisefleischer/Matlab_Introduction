%% If meuh else beuh
%   This script will show you a few examples of loops and conditions but
% first let's look at a little matlab feature regarding running codes. 
% You saw in the past lesson that code can quickly get long and when you
% have many things to display, it's hard to find the value you are looking
% for in the long command result. This is why Matlab lets you organize your
% code in sections. 
%
%   Sections are defined with two comment symbols (%%) followed by a space
% and the section title. The table content of your script appears on the bottom
% left of the Matlab window. Each section can be ran independently from the
% rest of the script my clicking on 'run section' in the editor tab/menu
% (shortcut: command+enter). 
%% Try on this:
try_section = 'just a section';
disp(try_section);

clear try_section   % good programming habit. If you think you are not going 
                    % to reuse one variable, and don't need to keep it in 
                    % your workspace, then delete it with clear
%%
% If you want to run the all code at once, you have to click 'run' (or F5).
% Important note: if one of your section calls a variable from another
% section, and the variable is not in your workspace (window on the right),
% your section will not run properly...

%% try this now
%disp(try_section) % uncomment then comment this section 

%% 1. Section 1 Conditions
% The most basic actions on variables are called loops and conditions, 
% and they have a different syntax than the rest of the functions. We are
% going to start with the conditionnal statements are they are the most
% used in any langage.

%% 1.1 The if statement
% The if statement is the main condition statement. It will assess the
% boolean value written after 'if' and if the value is true, it will
% execute the following lines. 

delay = 15;
announcement = sprintf('SPIRIT: you have a delay of %d minutes',delay); 
% sprinf (stands for string print at format) allows to make string relying 
% on the value of other variables (here delay) check in the help for the 
% different formats (define as %d) you can reach! 
disp(announcement);

% small exercise: what is %d format? try replacing it with %f, what is the
% difference?

% If you run this case, nothing is printed because the statement is false.
% Try by changing the above value of delay to 0.
if delay == 0 % must be a boolean, no semi-colon
    disp('ME: it''s a great day today, Spirit is on time'); % note: to display a quote, you use ''   
end % don't forget to close the statement!


%%
% now look at the two other options that you can add and change the value
% of delay (below) to print each possible case
delay = 15;
fprintf('you have a delay of %d minutes',delay); %where sprintf allocates 
% a string to a variable, fprintf prints that string into a file. When the 
% file is not specified, it prints onto the command window. It is therefore
% equivalent to the two lines above


if delay<30
    disp('it''s ok, you can''t control the weather')
elseif delay < 90
    disp('I am not happy')
else
    disp('I am so pissed')
end

% small exercise: change the statement so that it returns two additional
% message:
% 'I got a voucher' if the delay is more than 3h.
% 'my flight was cancelled, I got a refund' if the delay is more than 7h.

%% 1.1 The switch section
% when you have multiple options to check, there is a better way then
% listing elseif statements one after the other. You can use the switch
% method: here is an example.

weather = 'storm';

switch weather  % state what is it you want to check
    case 'sun' % compare it to this
        disp('put on your swim suit')
    case 'clouds'
        disp('put on a jacket')
    case 'snow'
        disp('take your skis')
    case 'storm'
        disp('stay inside')
    otherwise 
        disp('turn on the weather channel')
end % always en the statement

% small exercise: create a switch that takes a digit (0,1,2,...) as an entry and
% returns the french translation. Don't forget to add a return for the case
% when the entry is not a digit!

%% Exercise
% You are selling wine, spirit and boose online and you would like to
% ameliorate the research browser for your customers. You want the order
% process to take three steps: 
% - the client tells you if he wants white, red, rose or champagne wine.
% - depending on the answer, you show the client the list of available
% bottles in that category and ask him what bottle he wants
% - you ask him how many bottles he would like to buy
% - you return the price
%
% Don't forget to treat the cases of unvalid input

clearvars 

% First step update your catalogue ( no more than 5 per category)
white_options = {'Chardonnay', 'Sauterne'}; 
white_prices = [12, 23];
rose_options = {'Rose'};
rose_prices = [23];
red_options = {'Louise', 'Drouhin'};
red_prices = [120, 34];
champagne_options = {'Bruno Paillard'};
champagne_prices = [75];

% A few introduction words
disp('welcome to WineWarehouse!');

% input will offer the client to type their answer in the command window
wine_type_input = input('What are you looking for? We offer red, rose, white or champagne. \n','s');%\n signifies new line

fprintf('this is our %s list.\n', wine_type_input)

% your turn to play!       

disp('Thanks for making business with us!')

%% 2. Section 2 Loops
% When you repeat an action may times, you can do it recursively by using
% loops.

%% 2.2 The for section
% The for loop allows you to repeat a set of commands for a specified
% number

% Let's look at the syntax
for i = 1:10
    disp(i);
end

%% 
% easy enough. You can include loops in loops and choose weird values of
% the incrementation
for i = 1:0.1:10
    for j = -1:0
        disp(i)
        disp(j)
    end
end

% that's all there is to say about the loop for!

%%
% small exercise: write a loop that will display the first 10 prime number
% (hint: first type help primes)

%% 2.2 The while section
% The while loop is a little more tricky than the for loop as the number of
% iterations is not specified from the beginning. This is why is it very
% import to verify that the loop will break eventually or your code could
% be running infinitelly. In the case that this happens (and it will
% happen) type ctrl+C in the command window. 

% here is an example of the while syntax

i = 1;
while i<=10
    disp(i)
    i = i +1;
end

% this is basically a counting loop. In almost all while loop cases, you
% add a counting option so that your code breaks eventually. The loop
% statement has to be a boolean.

%%
answer = 'no';
i = 0;
while ~strcmp(answer,'yes')||i<=10 % remember your boolean statements?
    disp(i)
    disp('Do you understand?')
    if i == 12 % takes 12 times to understand
        answer = 'yes';
    end
    disp(answer)
    i = i+1;
end

%%
% small exercise: make a while loop that takes away a one apple at a time 
% from the basket until there are none left ( the initial number
% of apples can vary)

apples = 13;
    

% another small exercise: In the previous section's exercise, add a while loop that
% will keep allowing the customer to make order until he specifies it (hint
% create a variable end_order_input to parse in the while loop)
%% Exercise
    
    % Welcome to the super lucky bank! The interest rate of your account 
    % is 4.2% and your interests are added to your account every month
    % (lucky you). You currently have $6450 dollars in your bank account and
    % as a builder contractor, you will be earning $1200 every month for 
    % the next 4 months. After that, you won't be earning anything (poor you). 
    % If we suppose that all your spendings are exactly covered by an 
    % external source, in how many months will you reach $10,000?
    
    clearvars
    
    % no help to start, this is all yours!

    
%% 3. Problem
% You are in charge of coding the meter system for the San Jose airport 
% parking system.
% There are three parking lots at the airport and each of them calculate
% the price differently. This is what is displayed on the airport's
% website:
%     The Hourly Parking:
%      - $2.00 per 20 min
%      - $30.00 Daily Maximum
%      - $30.00 flat rate per additional day
%     The Daily Parking:
%      - $2.00 per 20 min
%      - $22.00 flat rate per day
%     The Economy Parking:
%      - $15.00 flat (daily)
% The website points out that those displaying an ADA placard may park 
% in any airport lot at the Economy Lot rate of $15.00 per day maximum.
%
% A Titine car is about to park in the airport. Write a script that will
% take it's time of arrival, time of departure, parking lot and ADA status
% and returns the price to pay.

% To start with, run this part end specify the inputs
parking_name = input('Parking Lot [Economy|Daily|Hourly]\n','s');
% Tic toc
time_spent = input('How long did you Titine stay parked? [min]\n');

% this is an exemple of code for how to verify that the input is correct
while true % this is an infinite loop, the only way to come out of it is to break it
    ADA_status = input('Are you in possession of an ADA placard? [Y|N]\n','s'); % transform this into a boolean
    switch lower(ADA_status) % compare lower case
        case 'y'
            ADA_status = true;
            break % break the loop
        case 'n'
            ADA_status = false;
            break % break the loop
        otherwise
            warning('invalid ADA status')
    end
end

% YOUR TURN here. Add the input verifications for the parking_name and the 
% time_spent, calculate the total price owed and don't forget to display 
% the result to the command window using fprintf!


% bonus part (hard): uncomment the two following lines and copy paste them in
% place of the % Tic Toc line in the problem. Add a few line of code to
% your script so that the time spent in the parking lot is a function of
% those two clock times. Be careful to take into account the unusual corner 
% cases (jump in days, jump in month, 31st of December, bisextile year).
% You can also keep that part for later and hand in the rest earlier.
%
% arrival_time = input('Titine''s arrival time [YYYY/MM/DD/HH/MIN]\n','s')
% departure_time = input('Titine''s departure time [YYYY/MM/DD/HH/MIN]\n','s')

%% Closing statement
% Pfiuu, that was a long chapter! With so many comments and so many things
% to do :) You last simple task will be to re-read and copy to the README file
% each numbered section with it's description. 
