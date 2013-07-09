has(bicycle,wheel,2).
has(bicycle,handlebar,1).
has(bicycle,break,2).
has(wheel,hub,1).
has(wheel,spoke,32).
has(bicycle,frame,1).
has(car,steering_wheel,1).
has(car,stereo,1).
has(car,tires,4).

partof(X,Y) :-  has(X,Y,_).
partof(X,Y) :- has(X,Z,_), partof(Z,Y).
