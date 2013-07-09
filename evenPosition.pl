evenPosition([],[]).
evenPosition([X|[]],[X]).
evenPosition([Head1|[_|Tail]],[Head1|Y]) :- evenPosition(Tail,Y).
