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