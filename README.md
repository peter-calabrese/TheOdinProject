# TheOdinProject

## Caesars Cipher
From Wikipedia:
> "In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence."

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
```ruby
caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```

## Substring
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
```ruby
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
```
Next, make sure your method can handle multiple words:
```ruby
substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```
Please note the order of your keys might be different.

## Stock Picker
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
```
## Bubble Sort 
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
```ruby
bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```
## Tic Tac Tie
Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

## Event Manager
Imagine that a friend of yours runs a non-profit organization around political activism. A number of people have registered for an upcoming event. She has asked for your help in engaging these future attendees. For the first task, she wants you to find the government representatives for each attendee based on their zip code.
