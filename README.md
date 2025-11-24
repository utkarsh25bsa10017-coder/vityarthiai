# vityarthiai
I have designed this guide assuming you will use SWI-Prolog, which is the industry standard for learning and development.

Prolog Family Tree
A simple logic programming project that defines familial relationships (parents, genders) and uses inference rules to determine complex relationships (grandparents, siblings, ancestors).

1. Prerequisites
You need a Prolog interpreter to run this code.

Recommended: Download SWI-Prolog (Free and open source).

Alternative: You can use an online compiler like SWISH if you don't want to install software.

2. Installation & Setup
Create a new file on your computer named family.pl.

Open the file in any text editor (Notepad, VS Code, etc.).

Paste the Prolog code (Facts and Rules) into the file.

Save the file.




3. How to Run the Code
Step 1: Launch Prolog
Open your terminal (Command Prompt or Terminal) and navigate to the folder where you saved family.pl. Type the following command and hit Enter: 
swipl


Step 2: Load the Database
Inside the Prolog prompt, load your file using the following syntax (don't forget the period at the end!):
?- ['family.pl'].   If successful, it will return true

4. Querying Guide
Here is how to ask the database questions. Remember: Variables must start with an Uppercase letter.

Checking a specific fact
Returns true or false.

?- parent(john, bob).
true.

?- sister(bob, ann).
false.

Here is a clean, professional README.md file for your project. You can copy and paste this directly into a text file.

I have designed this guide assuming you will use SWI-Prolog, which is the industry standard for learning and development.

Prolog Family Tree
A simple logic programming project that defines familial relationships (parents, genders) and uses inference rules to determine complex relationships (grandparents, siblings, ancestors).

1. Prerequisites
You need a Prolog interpreter to run this code.

Recommended: Download SWI-Prolog (Free and open source).

Alternative: You can use an online compiler like SWISH if you don't want to install software.

2. Installation & Setup
Create a new file on your computer named family.pl.

Open the file in any text editor (Notepad, VS Code, etc.).

Paste the Prolog code (Facts and Rules) into the file.

Save the file.

<details> <summary><strong>Click here to copy the full source code</strong></summary>

Prolog

% --- FACTS ---
male(john).
male(bob).
male(pat).
female(mary).
female(lisa).
female(ann).

parent(john, bob).
parent(mary, bob).
parent(bob, ann).
parent(bob, pat).
parent(lisa, ann).
parent(lisa, pat).

% --- RULES ---
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
</details>

3. How to Run the Code
Step 1: Launch Prolog
Open your terminal (Command Prompt or Terminal) and navigate to the folder where you saved family.pl. Type the following command and hit Enter:

Bash

swipl
You should see the welcome text and the ?- prompt.

Step 2: Load the Database
Inside the Prolog prompt, load your file using the following syntax (don't forget the period at the end!):

Prolog

?- ['family.pl'].
If successful, it will return true.

4. Querying Guide
Here is how to ask the database questions. Remember: Variables must start with an Uppercase letter.

Checking a specific fact
Returns true or false.

Prolog

?- parent(john, bob).
true.

?- sister(bob, ann).
false.

Finding a specific person (Who?)
Use a variable (e.g., Who, X, Father) to ask Prolog to find a match.
% Who is Ann's father?
?- father(X, ann).
X = bob.



