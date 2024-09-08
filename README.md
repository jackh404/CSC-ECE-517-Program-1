# CSC/ECE 517 (OO Design and Development)

## Program 1: Ruby

### Due Date: September 11, 2024 (Wed) 11:59 PM

This assignment consists of three parts and gives you an introduction to programming in Ruby. Please find the code template [here](https://drive.google.com/file/d/13jO4vWt_iPGhBGgGS_C2RVvhw3pHJbzp/view?usp=sharing). You need to complete the declared methods and class. **DO NOT** change the method or class definition in any way. Write your code where it says “\# ADD YOUR CODE HERE”.

**All YOUR FUNCTIONS SHOULD RETURN, NOT PRINT, THEIR RESULT VALUES.**

## Arrays, Hashes, and Enumerables

Check the official documentation on [Array](https://ruby-doc.org/core-2.7.0/Array.html), [Hash](https://ruby-doc.org/core-2.7.0/Hash.html) and [Enumerable](https://ruby-doc.org/core-2.7.0/Enumerable.html) as they may be helpful in solving this exercise. Define the following methods _(10 points each)_:

1. unique_occurrences?(a) Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.

   unique_occurrences?(\[1,2,2,1,1,3\]) returns True

   2 occurs twice, 1 occurs 3 times and 3 occurs once, so the number of occurrences of each value in the array is unique

   unique_occurrences?(\[1,2\]) returns False

   Two values occur exactly once: 1 and 2\.

   unique_occurrences?(\[-3,0,1,-3,1,1,1,-3,10,0\]) returns True

2. num_identical_pairs(a) Given an array of integers nums, return the number of good pairs. A pair (i, j) is called good if nums\[i\] \== nums\[j\] and i \< j.

   num_identical_pairs(\[1,2,3,1,1,3\]) returns 4

   The 4 pairs are (nums\[0\], nums\[3\]), (nums\[0\], nums\[4\]), (nums\[3\], nums\[4\]), and (nums\[2\], nums\[5\])

   num_identical_pairs(\[1,1,1,1\]) returns 6  
   num_identical_pairs(\[1,2,3\]) return 0

3. check_if_pangram(s) A pangram is a sentence where every letter of the English alphabet appears at least once. Given a string sentence containing only lowercase English letters, return true if the sentence is a pangram, or false otherwise.  
   check_if_pangram("thequickbrownfoxjumpsoverthelazydog") returns True  
   check_if_pangram("aedfasds") returns False

## Strings

Check the official Ruby documentation on [String](https://ruby-doc.org/core-2.7.0/String.html) and [Regexp](https://ruby-doc.org/core-2.7.0/Regexp.html) as they may be helpful in solving this exercise. Define the following methods such that _(10 points each)_:

1. brackets_match?(s) Given a string s containing just the characters '(', ')', '{', '}', '\[' and '\]', determine if the input string is valid. An input string is valid if:

   1. Open brackets must be closed by the same type of bracket.
   2. Open brackets must be closed in the order they are nested.

   Example:  
   brackets_match(“()”) returns true  
   brackets_match("()\[\]{}") returns true  
   brackets_match("(\]") returns false  
   brackets_match("(\[)\]") returns false  
   brackets_match("{\[\]}") returns true

2. remove_and_append_vowels(s) takes a string s representing a word as an argument and returns a string with all vowels of s removed and then appended to s. Characters are case-sensitive.  
   Example:
   remove_and_append_vowels(“Tree”) returns “Tree”  
   remove_and_append_vowels(“run”) returns “rnu”  
   remove_and_append_vowels(“Eyes”) returns “ysEe”

3. highest_frequency_word(s) takes a string s that represents a sentence as an argument and returns the word (in lowercase) with highest frequency. If there is a tie, it returns the word that first appears earlier (this search is not case sensitive).

   Example:

   highest_frequency_word(“Bob hit a ball; the hit BALL flew far after it was hit.”) returns “hit”

   highest_frequency_word(“A man was painting a new sign for the pub called the Pig and Whistle.”) returns “a”

   highest_frequency_word(“How are you doing?”) returns “how”

## Object-Oriented Basics (40 points)

You will be implementing a Book class. Each book has two attributes, title and price. The attributes shouldn’t be publicly accessible; rather they should be read and modified through proper getters and setters.

The constructor should accept the title (string) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if title is nil or an empty string, or if price is nil or less than or equal to zero.

Include a method formatted_price that returns the price of the Book formatted in the following manner:

- a price of 100 should format as “100 dollars”
- a price of 10.49 should format as “10 dollars and 49 cents only”
- a price of 1.01 should format as “1 dollar and 1 cent only”
- a price of 0.60 should format as “60 cents only”

## Submission

Submit only the ruby_intro_fall24.rb file. You should rename the file as **ruby_intro_TeamName_unityID1_unityID2.rb** (or **ruby_intro_TeamName_unityID1.rb** if you are working alone) before submitting.  
Example : ruby_intro_nah_jcui9_yxiao28

You can see your team name in [Expertiza](https://expertiza.ncsu.edu/). All teams share a common submission area in Expertiza. Only one copy of the work should be submitted.

When grading, we will load your file like this load 'ruby_intro_fall24.rb', then test each method.
