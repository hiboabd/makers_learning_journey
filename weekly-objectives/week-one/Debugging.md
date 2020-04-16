## Broader goal - week 1
### * Follow an effective debugging process *

### Smaller goals set by me
#### 1. What is debugging?

  1. Debugging is the process of finding and resolving errors within a computer program that prevent correct operation of computer software or a system.
  2. Debugging literally means 'removing bugs'. The name comes from a story about the computing pioneer Grace Hopper, who once tracked down a problem to a literal bug, taping it to her report for good measure.
  3. Debugging involves a methodical process

#### 2. Write down steps that you can take when debugging. Think about the order to follow those steps with an explanation as well as the time that you need to spend on each.

  1. Read through the error message carefully. Identify any specific lines of code that are causing the error
  2. Is it a syntax/typo error? Spend a good 2-5 minutes carefully scanning for typos.
  3. Read through the code carefully (especially if it was not written by you). Make sure you understand what is supposed to be happening at each stage.
  4. Use Puts to see what is happening at each stage of the process.
  5. Do you have an idea of what the error is/why it is occurring? Write it down in a way in which you could explain it to someone else.
  6. Try to solve the error yourself, with the knowledge at your disposal.
  7. If you cannot debug the issue yourself after 10 minutes - make use of google, stack overflow
  8. If you still are unable to solve it after at least 20 minutes try Rubber Ducking - talking out the issue with someone else.
  9. Order of people you should contact: peer group, then wider cohort.
  10. If this fails, ask your coaches for help. Make sure you explain the issue in great detail including where you think its occurring, what you think the issue is and what attempts you have already made
  11. Hopefully, at this point, you have solved the error.
  12. After it has been resolved, make sure you document what happened and what you learnt. Describe the bug, what the solution was and try to explain and make sure you thoroughly understand why the issue occurred and why your solution resolved it.


#### 3. Validation: successfully completing the Makers course practical on debugging with the new techniques

#### First debugging exercise

```def say_hello(name)
  "hello #{name}"
end

say_hello("hibo")
```

There were two steps I took to debug this:
  1. Firstly, the final line (say_hello("hibo") was added as the method needs to be called to get an output
  2. Secondly, the brackets in the second line ("hello #(name)") needed to be changed to curly braces to match string interpolation syntax

#### Second debugging exercise

```def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char).to_i).chr
  end
  ciphertext_chars.join
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
```

There were ___ steps I took to debug this:
1. Firstly, the method was called and this showed an error message that nil cannot be coerced to a integer and that the error was on line 4
2. By printing cipher.find_index(char) on line 4 it showed that the result of this adding this to 65 raised the error as the plus method expects an integer but cipher.find_index(char) is not an integer
3. To correct this, I added the method .to_i to convert it to an integer 
