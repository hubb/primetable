## Primetable

Write a program that prints out a multiplication table of the first 10 prime numbers.
The program must run from the command line and print to screen one table.
Across the top and down the left side should be the 10 primes, and the body of the table should contain the product of multiplying these numbers.
An example of the way the program may run:

```
<program_name> ­­count 10
```

Notes:
- Consider code readability/complexity
- Consider cases where we want more than ‘n’ primes
- Consider KISS and not over­engineering
- Consider re­usability
- Write your own implementation for generating prime numbers (DO NOT use a library)
- Write tests
- Write it in Ruby

### Usage

Primetable displays 10 elements by default.

```
% ./bin/primetable
     |  2   3   5   7   11  13  17  19  23  29
----+----------------------------------------
 2   |  4   6   10  14  22  26  34  38  46  58
 3   |  6   9   15  21  33  39  51  57  69  87
 5   |  10  15  25  35  55  65  85  95 115 145
 7   |  14  21  35  49  77  91 119 133 161 203
 11  |  22  33  55  77 121 143 187 209 253 319
 13  |  26  39  65  91 143 169 221 247 299 377
 17  |  34  51  85 119 187 221 289 323 391 493
 19  |  38  57  95 133 209 247 323 361 437 551
 23  |  46  69 115 161 253 299 391 437 529 667
 29  |  58  87 145 203 319 377 493 551 667 841
```

You can specify the desirect count of rows/columns to use with the -c (--count) switch:

```
% ./bin/primetable -c 3

   |  2  3  5
---+---------
 2 |  4  6 10
 3 |  6  9 15
 5 | 10 15 25
```

### Tests

Install the development & test dependencies with `bundle install` then simply run `rspec`.
This program has been built using Ruby 2.2.2.