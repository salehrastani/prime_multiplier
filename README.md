#Prime Multiplier Challenge
###Objective
Write a program that prints out a multiplication table of the first 10 prime
numbers. The program must run from the command line and print one table to
STDOUT. The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

##Checklist

1) Consider complexity. How fast does your code run? How does it scale?

- *Complexity of finding first `N` primes is `O(log n)`. Reduced the range of calculations by checking modulus values within `2..Math.sqrt(digit)` instead of `2..digit` or `2..digit/2` as explained [HERE](http://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime/37887596#37887596).*

- *OOP was implemented to allow for modular expansion of any type of multiplication table and Prime behavior.*

2) Consider cases where we want N primes?

- *Returns `N` primes by accepting argument following the CLI command. Defaults to 10 if argument is not provided or `N < 1`.*

3) Do not use the Prime class from stdlib (write your own code).

4) Write tests. Try to demonstrate TDD/BDD.

- *Multiple case scenarios of input and output on Prime class methods were tested. `Red --> Green --> Refactor` strategy was followed.*

##Usage
- `rspec` from repos root directory for full test suite.

-  `ruby lib/run_prime_multiplier.rb` for multiplication table of first 10 primes.

-  `ruby lib/run_prime_multiplier.rb 5` or any number *`N > 1`* for multiplication table of first *`N`* primes.
