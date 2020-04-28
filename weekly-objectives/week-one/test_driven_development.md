## Broader goal - week 1
### * Test-drive a simple program using objects and methods *

#### What is Test Driven Development?

  1. Test Driven Development is a development practice that involves writing tests before writing the code that's being tested. In practice you begin by writing a small test for code that does not exist yet. You then run the test, seeing it fail. Then you proceed to write just enough code to make the test pass.

#### The three rules of TDD

  1. You are not allowed to write any production code unless it is to make a failing unit test pass.
  2. You are not allowed to write any more of a unit test than is sufficient to fail; and compilation failures are failures.
  3. You are not allowed to write any more production code than is sufficient to pass the one failing unit test.

### Benefits of TDD

  1. Protects against debugging. Imagine if you walked in a room full of people working using TDD. Pick any random person at any random time. A minute ago, all their code worked. If all your code works every minute, how often will you use a debugger? Answer, not very often.
  2. Some argue that TDD helps improve code quality.
     1. Some argue that TDD helps because it forces you to think carefully about the code you will write that helps you solve a problem.
     2. It is also argued that it helps you correctly test the desired behaviour of code you might write in the future, because if you write the test first then you know for certain that it should fail. If the test does not fail then you have solid evidence that you have not written the correct test because the code to make it pass has not been written yet.

#### 
