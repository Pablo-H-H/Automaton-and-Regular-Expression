state(q0). % initial state
state(q1). % initial state

state(a0). % 'á/Á' inputed
state(a1). % 'r' inputed
state(a2). % 'e' inputed

state(b0). % 'a/A' inputed
state(b1). % 's' inputed
state(b2). % 'c' inputed
state(b3). % 'a' inputed

state(c0). % 'r' inputed
state(c1). % 'd' inputed
state(c2). % 'a' inputed

state(d0). % 't' inputed
state(d1). % 'a' inputed
state(d2). % 'n' inputed

state(e0). % 'v' inputed
state(e1). % 'a' inputed
state(e2). % 'r' inputed
state(e3). % 'i' inputed

move(q0, X, a0):-           X == 'á'; X=='Á'.
move(a0, 'r', a1).
move(a1, 'e', a2).

move(q1, X, b0):-           X == 'a'; X=='A'.
move(b0, 's', b1).
move(b1, 'c', b2).
move(b2, 'a', b3).

move(b0, 'r', c0).
move(c0, 'd', c1).
move(c1, 'a', c2).

move(b0, 't', d0).
move(d0, 'a', d1).
move(d1, 'n', d2).

move(b0, 'v', e0).
move(e0, 'a', e1).
move(e1, 'r', e2).
move(e2, 'i', e3).

% initial states
initial(q0).
initial(q1).

% final states
accepting(a2).
accepting(b3).
accepting(c2).
accepting(d2).
accepting(e3).



accepts(State, []):-
	accepting(State),!,
	write("Accepted command").

accepts(State, [H|T]):-
	move(State,H,NextState),
	accepts(NextState,T).

check(Input):-
	initial(InitialState),
	accepts(InitialState, Input).

dfa(String):-
	atom_chars(String,Chars),
	check(Chars),!.