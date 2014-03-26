## Kent Beck's TDD by Example
==============

### Learnings from Chapter 1

* When we write a test, we imagine the prefect interface for our operation. we are telling how the operation will look from the outside
* Our Story will not always come true. But it is better to start from the best possible API and work backwards, than to make things ugly and "realistic" from the get-go
* If dependancy is the problem, duplication is the symptom. Duplication most often takes the form of duplicate logic, the same expressions appearing in multiple places in the code. Objects are excellent way for abstracting away the duplication of logic
* Unlike problems in life where elimination symptoms only makes problems pop elsewhere in worse form. By eliminating duplication, in the program, eliminates dependency. That is why the second rule appears in TDD. By eliminating duplication before we go on to the next test, we maximize our chance of being able to get the next test running with one and only one change.

------------------------------------------------------------------------------------------------------------

### Learnings from Chapter 2

* Write a test. Think about how you would like the operation in your mind to appear in your code. You are writing a story. Invent the interface you wish you had. Include all teh elements in the story that you imagin will be necessary to calculate the right answers.
* Make it run. Quickly getting that bar to go green dominates everything else. If a clean, simple solution is obvious, then type it in. If the clean, simple solition is obvious, but will take a minute, then make a note of it and get back to teh main porblem, which is getting the bar to green in seconds.
* Make it right. Now that th system is behaving, put the sinfiul ways of the recent past behind you. Step back onto the straight and narrow path of software righteouness. Remove the duplication has been introduced, and get to green quickly
* Ways to go green
 1. Fake it -- Return  constant and gradually replace constants with variables until you have the real code.
 2. Use Obvious Implementation -- Type in the real implementations.
* Translation of a feeling (example: disgust at side effects) into a test (for example, multiply the same Dollar twice) is a common theme of TDD. The longer I do this, the betterI'm able to translate my aesthetic judgements into tests. When I can do this, mu design discussions become much more interesting.
* First, we can talk about the behaviour of the system. Once behaviour is decided, we can talk about the best way to achive the behaviour

--------------------------------------------------------------------------------------------------------------

### Learnings from Chapter 3

Value Object:

* If 1 is added to an integer, the value of the original integer does not change. Objects usuallydon't behave this way. If a contract exists, and 1 is added to its coverage, the contract's coverage changes.
* We can use Objects as values. The pattern for this is Value Object. One of the constraints on the alue Obkects is that the values of the instance variables of the object never change once they have veen set in the constructor
* There is one huge advangege to use Value Objects: we don't have to worry about aliasing problems. If I have 5$, then I'm garenteed that it will always and forever be $5. If someone wants 7$, then they will have to make an entirely new object.
* One implication of Value Objects is that all operations must return a new object. Another implications is taht Value Objects should implement equals(), because one $5 is pretty much as good as another.

--------------------------------------------------------------------------------------------------------------

### Learnings from Chapter 4

* With TDD, We are not striving for prefection. By saying everything two ways - both as code and as tests - we hope to reduce out defects enough to move forward with confidence. From time to time, reasoning will fail us and a defect will slip through. When that happens, we learn our lesson about the tests that we should have written and move on.

-------------------------------------------------------------------------------------------------------------

### Learnings from chapter 5

* Different phases of TDD are
 1. Write a test.
 2. Make it compile.
 3. Run it to see that it fails
 4. Make it run
 5. Remove Duplication

-------------------------------------------------------------------------------------------------------------

### Learnings from Chapter 6

* We will often be implementing TDD in code that does not have adequate tests.
* When you don't have enough tests, you are bund to come across refactorings that aren't supported by teh tests
* We could make a refactoring mistake and still the tests would run.
* The solution to this is, write the tests that you wish you had.
* If not, you will eventually breake something during refactoring. Which would not be caught by the existing test suite

-------------------------------------------------------------------------------------------------------------

### Learnings from Chapter 7

* Converted an objection into a test
* Make test run in a reasonable way, event though not perfectly

-------------------------------------------------------------------------------------------------------------