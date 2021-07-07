# Instructions
* Fork this repo
* Clone your forked repo
* Complete the funtivity below
* Push your solution to your repo
* Submit a Pull Request from your repo to this repo
* Put your name in your PR!

## Iteration 1

For iteration 1, we have created all of the tests.
You will need to unskip tests one by one by removing the x
in front of it and make each pass one pass before
moving onto the next test. The tests will model the 
following interaction pattern: 

```ruby
pry(main)> require './lib/bus'
#=> true

pry(main)> bus = Bus.new('Mikes Awesome Bus', 4)
=> #<Bus:0x00007fed7c11dbd8 @capacity=4, @name="Mikes Awesome Bus", @passengers=[]>

pry(main)> bus.name
=> "Mikes Awesome Bus"

pry(main)> bus.capacity
=> 4

pry(main)> bus.passengers
=> []
```


## Iteration 2

For iteration 2, we have created all of the tests you will need  
unskip tests one by one, making each pass before moving on the the next test.
The tests will model the interaction pattern below.

`yell_at_passengers` should return an array of names all in caps

```ruby
pry(main)> bus = Bus.new('Mikes Awesome Bus', 4)
=> #<Bus:0x00007fed7c11dbd8 @capacity=4, @name="Mikes Awesome Bus", @passengers=[]>

pry(main)> bus.add_passenger('Mike')
pry(main)> bus.add_passenger('Megan')
pry(main)> bus.add_passenger('Tim')

pry(main)> bus.passengers 
=> ["Mike", "Megan", "Tim"]

pry(main)> bus.yell_at_passengers
=> ["MIKE", "MEGAN", "TIM"]
```

## Iteration 3
Now, it is time for you to write your own tests! Follow the interaction pattern
below to write one test, make that test pass, and move on to the next test.
You will have at minimum, one test per new method.
* Note: The method `over_capacity?` will return true if the bus has more passengers than the capacity. It will return false if the passengers do not exceed the capacity. 

```ruby
pry(main)> bus = Bus.new('Mikes Awesome Bus', 4)
=> #<Bus:0x00007fed7c11dbd8 @capacity=4, @name="Mikes Awesome Bus", @passengers=[]>

pry(main)> bus.add_passenger('Mike')
pry(main)> bus.add_passenger('Megan')
pry(main)> bus.add_passenger('Tim')

pry(main)> bus.number_of_passengers
=> 3

pry(main)> bus.over_capacity?
=> false

pry(main)> bus.add_passenger('Eve')
pry(main)> bus.add_passenger('Alice')

pry(main)> bus.number_of_passengers
=> 5

pry(main)> bus.over_capacity?
=> true
```

# Iteration 4
Now, it is time for you to write your own tests! Follow the interaction pattern
below to write one test, make that test pass, and move on to the next test.
You will have at minimum, one test per new method.
* The `kick_out` method will remove the oldest passenger on the bus

```ruby
pry(main)> bus = Bus.new('Mikes Awesome Bus', 4)
=> #<Bus:0x00007fed7c11dbd8 @capacity=4, @name="Mikes Awesome Bus", @passengers=[]>

pry(main)> bus.add_passenger('Mike')
pry(main)> bus.add_passenger('Megan')
pry(main)> bus.add_passenger('Tim')
pry(main)> bus.add_passenger('James')
pry(main)> bus.add_passenger('Cat')
pry(main)> bus.add_passenger('Alice')

pry(main)> bus.kick_out

pry(main)> bus.number_of_passengers
=> 5

pry(main)> bus.over_capacity?
=> true

pry(main)> bus.kick_out
pry(main)> bus.kick_out

pry(main)> bus.number_of_passengers
=> 3

pry(main)> bus.over_capacity?
=> false

pry(main)> bus.passengers
=> ["James", "Cat", "Alice"]

```
