= begin
Broader goal - week #1
* Follow an effective debugging process *

Smaller goals set by me
1. Research two debugging processes and answer the question - what is debugging?

    - Debugging is the process of finding and resolving errors within a computer program that prevent correct operation of computer software or a system.
    - Debugging literally means 'removing bugs'. The name comes from a story about the computing pioneer Grace Hopper, who once tracked down a problem to a literal bug, taping it to her report for good measure.
    - Debugging involves a methodical process

2. Write down steps that you can take when debugging. Think about the order to follow those steps with an explanation as well as the time that you need to spend on each.

    - Read through the error message carefully. Identify any specific lines of code that are causing the error
    - Is it a syntax/typo error? Spend a good 2-5 minutes carefully scanning for typos.
    - Read through the code carefully (especially if it was not written by you). Make sure you understand what is supposed to be happening at each stage.
    - Use Puts to see what is happening at each stage of the process.
    - Do you have an idea of what the error is/why it is occurring? Write it down in a way in which you could explain it to someone else.
    - Try to solve the error yourself, with the knowledge at your disposal.
    - If you cannot debug the issue yourself after 10 minutes - make use of google, stack overflow
    - If you still are unable to solve it after at least 20 minutes try Rubber Ducking - talking out the issue with someone else.
    - Order of people you should contact: peer group, then wider cohort.
    - If this fails, ask your coaches for help. Make sure you explain the issue in great detail including where you think its occurring, what you think the issue is and what attempts you have already made
    - Hopefully, at this point, you have solved the error.
    - After it has been resolved, make sure you document what happened and what you learnt. Describe the bug, what the solution was and try to explain and make sure you thoroughly understand why the issue occurred and why your solution resolved it.


3. Validation: successfully completing the Makers course practical on debugging with the new techniques

First debugging exercise

def say_hello(name)
  "hello #{name}"
end

say_hello("hibo")

There were two steps I took to debug this:
1. Firstly, the final line (say_hello("hibo") was added as the method needs to be called to get an output
2. Secondly, the brackets in the second line ("hello #(name)") needed to be changed to curly braces to match string interpolation syntax

Second debugging exercise

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char).to_i).chr
  end
  ciphertext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")

There were ___ steps I took to debug this:
1. Firstly, the method was called and this showed an error message that nil cannot be coerced to a integer and that the error was on line 4
2. This error occurred due to the

Third debugging exercise

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end

Fourth debugging exercise - using the find the problem, learning oriented approach

def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
    n -= 1
  end
  product
end

factorial(5)

Steps taken
-

=end
