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

The complexity of the prolog model is O(n) where n is the number of letters that the word has, this is because each iteration of i, if i exists within n, then i increments.
Consequently, the time complexity of my solution generally remains at O(n).
