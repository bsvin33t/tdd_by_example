# Learnings from Chapter 1

* When we write a test, we imagine the prefect interface for our operation. we are telling how the operation will look from the outside
* Our Story will not always come true. But it is better to start from the best possible API and work backwards, than to make things ugly and "realistic" from the get-go
* If dependancy is the problem, duplication is the symptom. Duplication most often takes the form of duplicate logic, the same expressions appearing in multiple places in the code. Objects are excellent way for abstracting away the duplication of logic
* Unlike problems in life where elimination symptoms only makes problems pop elsewhere in worse form. By eliminating duplication, in the program, eliminates dependency. That is why the second rule appears in TDD. By eliminating duplication before we go on to the next test, we maximize our chance of being able to get the next test running with one and only one change.