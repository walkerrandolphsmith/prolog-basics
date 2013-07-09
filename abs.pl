abs(0,0).
abs(X,Y) :- X < 0, Y is -1 * X.
 abs(X,Y) :- X > 0, Y is X.
