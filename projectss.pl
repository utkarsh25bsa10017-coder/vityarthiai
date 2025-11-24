male(john).
male(bob).
male(pat).

female(mary).
female(lisa).
female(ann).

% Parent Relationships: parent(Parent, Child).
parent(john, bob).
parent(mary, bob).

parent(bob, ann).
parent(bob, pat).

parent(lisa, ann).
parent(lisa, pat).% --- RULES ---

% 1. Father and Mother
% X is the father of Y IF X is a parent of Y AND X is male.
father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

% 2. Grandparents
% X is a grandparent of Z IF X is a parent of Y AND Y is a parent of Z.
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

% Specific Grandparent rules
grandfather(X, Z) :-
    grandparent(X, Z),
    male(X).

grandmother(X, Z) :-
    grandparent(X, Z),
    female(X).

% 3. Siblings
% X is a sibling of Y IF they share a parent Z, AND X is not the same person as Y.
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.  % This prevents Prolog from saying Bob is his own brother.

% 4. Brother and Sister
brother(X, Y) :-
    sibling(X, Y),
    male(X).

sister(X, Y) :-
    sibling(X, Y),
    female(X).
