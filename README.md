Prolog Assignment
 
1)       The BNF for Prolog is listed below.  Develop a leftmost derivation for the sentence below.  You can assume Color,R1,R2, and diff are atoms or variables to make things easier. [10 points]
 
color(R1,R2) :- diff(R1,R2).
 
`<program> ::= <clause list> <query> | <query>`    
`<clause list> ::= <clause> | <clause list> <clause>`  
`<clause> ::= <predicate> . | <predicate> :- <predicate list> .`
`<predicate list> ::= <predicate> | <predicate list> , <predicate>`
`<predicate> ::= <atom> | <atom> ( <term list> )`
`<term list> ::= <term> | <term list> , <term>`
`<term> ::= <numeral> | <atom> | <variable> | <structure>`
`<structure> ::= <atom> ( <term list> )`
`<query> ::= ?- <predicate list> .`
`<atom> ::= <small atom> | ' <string> '`
`<small atom> ::= <lowercase letter> | <small atom> <character>`
`<variable> ::= <uppercase letter> | <variable> <character>`
`<lowercase letter> ::= a | b | c | d | … | x | y | z`
`<uppercase letter> ::= A | B | C | D | … | X | Y | Z | _`
`<numeral> ::= <digit> | <numeral> <digit>`
`<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9`
`<character> ::= <lowercase letter> | <uppercase letter>
| <digit> | <special>`
`<special> ::= + | - | * | / | \ | ^ | ~ | : | . | ? | @ | # | $ | & `
`<string> ::= <character> | <string> <character>`
 
2)      Write a predicate abs(X,Y) which takes a number X as input and computes the absolute value |X| as output: [10 points]
| ?- abs(0,0).
yes
| ?- abs(-1,1).
yes
| ?- abs(-1,Y).
Y = 1
| ?- abs(5,Y).
Y = 5
 
3)      Write a Prolog predicate seq(First, Last, N) that instantiates N to each integer value from First through Last, inclusive. First and/or Last may be negative. Assume that First and Last are integers. Examples: [10 points]
| ?- seq(1, 3, X).
X = 1 ? ;
X = 2 ? ;
X = 3 ? ;
no
| ?- seq(-3, 2, X).
X = -3 ? ;
1
X = -2 ? ;
X = -1 ? ;
X = 0 ? ;
X = 1 ? ;
X = 2 ? ;
no
| ?- seq(1,1,X).
X = 1 ? ;
no
| ?- seq(2,-2,X).
No
 
4)      Consider this database of facts, describing what something is made up of:
has(bicycle,wheel,2).
has(bicycle,handlebar,1).
has(bicycle,break,2).
has(wheel,hub,1).
has(wheel,spoke,32).
has(bicycle,frame,1).
has(car,steering_wheel,1).
has(car,stereo,1).
has(car,tires,4).
Write a predicate partof(X,Y) that succeeds if Y is a part of X: [10 points]
| ?- partof(wheel,spoke).
true
| ?- partof(bicycle,spoke).
true
| ?- partof(car,spoke).
no
partof(X,Y) can also be used to enumerate the parts that makes up an object, or of which an object is a
part:
| ?- partof(bicycle,X).
X = wheel ? ;
X = handlebar ? ;
X = break ? ;
X = frame ? ;
X = hub ? ;
2
X = spoke ? ;
no
| ?- partof(X,spoke).
X = wheel ? ;
X = bicycle ? ;
no
 
5)       Write a predicate evenPositions(X,Y) that takes a list X as input, and returns a list with the elements of X that occur at positions 0, 2, 4, … [20 points]
 
|?- evenPositions([a,b,c,d,e,f,g],X).
X = [a,c,e,g];
No
6)      Write a predicate oddPosition(X,Y) that takes a list X as input, and returns a list with the elements of X that occur at positions 1,3,5,… [20 points]
|?-oddPositions([a,b,c,d,e,f,g],X).
X = [b,d,f];
No
7)      Write a predicate mergelists(X,Y,Z) that takes two sorted lists and computes the sorted list obtained by merging the two lists. [20 points]
|?-mergelists([1,5,8,12,33],[3,4,7,9,10,20,25],Z)
Z = [1,3,4,5,7,8,9,10,12,20,25,33];
No

