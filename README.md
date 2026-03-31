# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Rob Gonzalez
Orlando Godina

## Summary
In this lab, we have learned about the following lab concepts and how to implement them to verilog and our basys board: D flip flop, JK flip flop and T flip flop. We have learned how to implement an edge detector and can demonstrate this on the board when the button is pressed and a switch is activated. In other words, the output of the D flip flop does not depend on the current state. In every N seconds, it is able to switch from high to low or low to high. This is the T flip flop and is a clock that toggles. We were able to use the truth tables to further understand the concepts as well.

## Lab Questions

### What is difference between edge and level sensitive circuits?
The difference between edge and level sensitive circuits is that edge sensitive circuits change its state only during a clock transition (rising/falling edge). Level sensitive circuits change output whenever the clock is high or low.


### Why is it important to declare initial state?
It is important to declare an initial state because without doing so the flip-flops would not know where to start. Without an initial state they would start undefined and the circiuts could behave unpredictably.

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow us to build reliable sequential systems that depend on controlled timing. Without edge sensitive circuits counters would be continuous and uncontrollable. They are foundational for building processors and digital systems which computer science relies on. As well as many many other implementations that require edge sensitive circuits.
