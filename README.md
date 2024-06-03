# Automaton-and-Regular-Expression
E1 Implementation of Lexical Analysis (Automaton and Regular Expression) using the elven language as example

## Description of the language
The concept of an Elven language is deeply rooted in mythology, fantasy literature, and popular culture. Elves are mythical beings often depicted as elegant, wise, and magical creatures in various mythologies and 
fictional works. Throughout many fantasy stories, including J.R.R. Tolkien's "The Lord of the Rings" and "The Silmarillion," elves are portrayed as having their own distinct language or languages.

## Model and Implementation of the Solution
To create an automaton we first need to make a diagram that we can use as a reference to create our code and tests. The diagram of the following automaton has initial states q0 and q1, and final states a2, b3, c2, 
d2, and e3.

![AutomatonDiagram drawio](https://github.com/Pablo-H-H/Automaton-and-Regular-Expression/assets/111140061/396f166f-348e-40b8-8072-bb8cac8a6e38)


Subsequently and based on this, the prolog program was created which is found in the automaton.pl file, with this it was found that the regular expressions are the following (áre)|(Áre)|(asca)|(Asca)|( arda)|(Arda)|
(atan)|(Atan)|(avari)|(Avari). These same regular expressions were used to create its implementation in Python found int the regex.py.

## Tests

To do the tests in Prolog, there are a series of tests that are found in the "Prolog test words.txt" file. This set is divided into two sections, the first section being the commands that return true and the second 
section containing examples of commands that return false.

In the case of python regular expressions there is already a series of tests, these are also divided into tests that return true and those that return false

Examples of valid commands in prolog:
```
dfa("Áre").
dfa("áre").

dfa("Asca").
dfa("asca").

dfa("Arda").
dfa("arda").

dfa("Atan").
dfa("atan").

dfa("Avari").
dfa("avari").

```

Examples of invalid commands in prolog:
```
dfa("Árde").
dfa("árde").

dfa("Ascar").
dfa("ascar").

dfa("Atar").
dfa("atar").

dfa("Anari").
dfa("anari").
```

## Analysis
### Complexity Analysis of an DFA
A deterministic finite automaton (DFA) is a finite state machine that recognizes a regular set of strings. The time complexity of a DFA depends on the number of states and the length of the input string.

For a DFA, the time complexity is generally O(n), where n is the length of the input string. This is because the DFA processes each symbol in the input string only once and transitions between states in constant O(1) time, so the final complexity is O(n).

### Complexity Analysis of REGEX
The regular expression defined in regex is in the form of multiple alternatives separated by the operator | (alternation), where each alternative is a specific word delimited by word boundaries (\b). Let's break down the complexity:

Number of Alternatives:
There are 10 alternatives in the pattern, each representing a specific word with word boundaries.
Each alternative is evaluated sequentially until a match is found or all alternatives have been evaluated.

Evaluation of Each Alternative:
Each alternative has a fixed length and can therefore be evaluated in constant O(1) time.

Total Complexity:
The overall complexity of the pattern will depend on the length of the input string and the number of alternatives.
In the worst case, each of the n positions in the input string will be evaluated against the 10 alternatives.
This results in a complexity of O(n⋅m), where n is the length of the input string and m is the number of alternatives in the regular expression.
In this case, since there are 10 alternatives, we can consider m as a constant, so the total complexity of the algorithm would be O(n), where n is the length of 
the input string.

Additional considerations

Regex Engine Efficiency:
The regex engine in Python is quite efficient for patterns of this nature (alternations between specific words). There are no complex repetition operators that 
could induce exponential behavior at runtime.

Input String Size:
The size of the input string can influence the execution time, but given the structure of the pattern, each character in the string will be evaluated a constant 
number of times (10 in this case).


### Comparison with other algorithms
The complexity of the prolog model is O(n) where n is the number of letters that the word has, this is because each iteration of i, if i exists within n, then i 
increments.
Consequently, the time complexity of my solution generally remains at O(n).

Using a regular expression (regex) instead of a loop with multiple comparators can have several advantages, depending on the context and the specific requirements 
of the problem you are trying to solve. Below we will explain why using a regex is better than using code that uses cycles and comparisons with "if" comparators.

Efficiency
Regular expressions are optimized to perform pattern searches efficiently. Regex engines are designed to process and search complex patterns quickly, often faster 
than a manual loop with multiple comparisons, especially when the number of patterns to be compared is large.

Flexibility
Regular expressions are very powerful and flexible. They can handle a wide range of patterns, including matching options like word boundaries, special characters, 
repetitions, and more, in a way that would be complicated and error-prone to implement manually.

Consistency
The regex engine follows well-defined and consistent rules for pattern searching. This can reduce errors compared to manual implementation, where logical errors 
may be more common.

Complexity Comparison

Cycle with Comparators:
If you have a list of words to compare and the length of the input string is n and the number of words is m, the complexity is O(n⋅m).

Regex:
For the same word list and string length, the complexity is also O(n), since the number of patterns (m) is constant and small compared to the length of the input 
string.

## References

Python Software Foundation. (n.d.). re — Regular expression operations. Retrieved from https://docs.python.org/3/library/re.html
