# 2_Hello_Cow_World

## At first there was nothing

Whenever starting with a new program language, it is important to get familiar with the working environment. Now that you have installed Matlab, open the software and take a look at the different subwindows you can see. Note that every window is modular and can be opened outside of the main display. I personnaly like having everything in the same page but when codes get long, it is nice to display the whole editor in a separate window.

-- Editor? But what is that?

The editor is to the command window what your notepad is to your terminal. You can write and save multiple lines of code in the editor but it will be through the command window that the actual computation is going to happen. The nice thing is that Matlab's editor is able to proof read your code before you run it, this way you can correct typos and small mistakes before putting any computation power into the code. 

## First steps

Now is time to crack your fingers because we are going to dive straight into our first exercise. We are going to make a script that will display "Hello Cow World!" in the command window.

From the tab `Home`, cick on create a new script. Save it as hello_script in your Matlab Introduction repository.
Without typing anything, click on "run" in the editor tab (or F5 as a shortcut). When the window pops up , click "change folder". This is telling Matlab which directory it should be working from. For you it is Matlab_introduction.

Now that you have run this function, you should see in the Command window (bottom) a two chevrons with the name of your function. Matlab has successfully compiled your code, but as it was empty, it only displayed the title of your file.

Now type with the quotes and the semi-colon: `disp('Hello Cow World!');` What do you see?
Try without quotes and/or without disp() and/or without semi-colon and observe what the command window outputs. Now add a `%` in front of the line and run it again. The line has changed colors, it is now a comment and won't be read by Matlab. 

Your exercise is to save in this hell_script file a list of all function ways of displaying `'Hello Cow World!` on the command window. Comment each line with an explanation of what makes that command line different than the others. 

## And then came cows, 'cows' and true cows

That is for next lesson!


## Vaches Salers Comments and Questions

I am having a lovely time with this project of ours. I do have a somewhat important questions however. I think that there is a bit of uncertainty as to what it is that is supposed to be entered into either the terminal or Matlab vis a vis text/codes that you want EXACTLY copied. As a result, I think we should establish a method to distinguish as it is unclear. Should things going in always be surrounded by words on either side to establish start and stop i.e. meuh text’text’disp(text) meuh

I don’t know if the initial (`) that is before the disp and the one after is supposed to be included, or if that is exactly intended to do what meuh … meuh does above. After reading some compiling errors I am assuming it does, so I suppose you can just confirm this for me!

## Master Cow's answer

The (`) sign is used as a specific formatting tool for the .md file that we are currently writing in. If you look at the document directly in the github.com, you will see how the page formating works. In further exercises, I will be directly sharing some matlab code with you and all those bugs should go away.