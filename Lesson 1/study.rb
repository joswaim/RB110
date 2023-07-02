str = 'The grass is green'

p str[4, 5]

# Technically, strings are not true collections, though we will often talk of strings as though they were. 
# Collections contain multiple objects, while strings contain only a single object. 
# The individual characters are not objects, but are just part of the object that contains the string value.

# Strings act like collections in that you can access and assign each character individually. 
# However, when you access a single character of the string with something like str[2], 
# the return value is a brand new string - each time you call str[2], it returns a new string:

# char1 = str[2]                     # => "c"
# char2 = str[2]                     # => "c"
# char1.object_id == char2.object_id # => false

# If str were a real collection, the char1 and char2 objects would have the same object_id.

# arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
# p arr[2, 3]
# p arr[2, 3][0]

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }

# Symbols are basically immutable strings

arr = [3, 'd', nil]
arr[2] # => nil
arr[3] # => nil

arr.fetch(2) # => nil
arr.fetch(3) # => IndexError: index 3 outside of array bounds: -3...3
             #        from (irb):3:in `fetch'
             #        from (irb):3
             #        from /usr/bin/irb:11:in `<main>'

str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
# Note that this way of modifying a string is a destructive action; that is, the str string is changed permanently.

########################################################################################################################

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Explicit requirements
# Palindromes are case sensitive
# Every palindrome in the string should be returned even if it contains another returned palindrome

# Implicit requirements
# empty strings should return an empty array
# an array of string objects should be returned


########################################################################################################################

## P: Understanding the Problem
  # Establish the rules. define the boundaries of the problem.
    # Assess the available information
    # Restate the Explicit requirements - Explicit: clearly stated in the problem description
    # Identify implicit requirements - Implicit: not clearly stated but can be identified by understanding the problem
  # Spend enough time in this step, dont rush it.

## E: Examples and Test Cases
  # Can confirm/refute assumptions
  # Help to answer questions about implicit requirements
  # Ace as assetions which help to codify the rules and boundaries

## D: Data Structures
  # Help reason with data logically
  # Help interact with data at implementation level
  # Thinking in tyerms of data structures is part of problem solving process
  # Data structures closely linked to algorithm
    # Set of steps from input to output
      # Involves structuring data in a certain way

## A: Algorithms
  # A logical sequence of steps to accomplish a task or objective
    # Closely linked to data structures
    # Series of steps to structure data to produce the required output
  # Stap abstract/high-level
    # Avoid implementation detail
    # Dont worry too much about efficiency when just getting started with this process
    
## C: Implementing a solution in Code
  # Translating the solution algorithm to code
  # Think about the algorithm in the context of the programming language
    # Language features and constraints
    # Characteristics of data structures
    # Built in functions and methods
    # Syntax and coding patterns
  # Create any test cases
  # Code with intent

##General Example##

# Given a string, produce a new string with every other word removed.
# Explicit requirements:
  # Input: string
  # Output: new string
  # Remove every other word from input string

# Questions:
  # What do we mean by every other word?
    # All odd, all even, what?
  # How do we define a word in this context?
    # Words are delimited by spaces?


## Sum Even Number Rows

