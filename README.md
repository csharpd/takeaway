Takeaway Challenge
==================

Week 4 Makers Academy Challenge

###Specification

+ Lists the dishes with prices
+ Places the order by giving the list of dishes, their quantities and a number that should be the exact total.
+ If the sum is not correct the method should raise an error
+ Otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now.


###Technologies used

+ Ruby
+ RSPEC
+ Twilio

###How to set it up

```sh
git clone https://https://github.com/csharpd/takeaway.git
```

###Run

To run takeaway

```sh
cd takeaway
bunde install
irb
require './lib/all_files_needed.rb'

```

###Test

```sh
cd takeaway-challenge
rspec
``` 

###Future Improvements


+Refine method names to improve readability  e.g. ensure the "place" method is only used once. 

+Introduce a line item class. At the moment the key method (that allows customers to select an item and place an order) takes 4 arguments. A line item class would simplify this method. 

+Hide twilio phone number details using ENV variables
