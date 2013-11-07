#RUBYONRAILSTUTOR.COM - LESSON 1
##STRINGS, HASHES, ARRAYS

### CLASS STYLE

I demonstrate, explain and then each person in turn replicates.  If you don't know how something works, pay attention and learn, if you do know how it works, challenge yourself by making sure everyeone else in the group can do it, help others extend their learning edges.   

Extra points, good for free beer, find John's knowledge edges on these topics, in a nice friendly way, expose his knowledge edges, learn about the process of realizing that even after doing this 'programming thing' every day for last 555+ days, he too is a beginer.  Even more important, start to think about why retaining a beginner's mind forms the most adaptive, fundamentally powerful way to approach problem solving.   



### LEARNING GOALS

  - irb vs script.rb
  - double spacing and indentation, do it. no questions asked.

  - variable instantiation

  ```ruby
  name = "john"
  ```

  - string manipulation  

  ```ruby
  name = "john".reverse
  p name
  messed_up_name = "j*o*h*n"
  # how to remove ALL the '*' from messed_up_name ?
  p messed_up_name.gsub("*", "")
  ```

  - string interpolation

  ```ruby
  first = "john"
  last = "davison"
  full_name = first + last
  # why doesn't the '+' try to 'add' the names ? 
  p full_name
  ```

  - how to define a function and what functions do

  ```ruby
  def example_method
    name = "john"
    p "my name is #{name}"
  end
  ```

  - return values, explicit and implicit

  ```ruby
  def example_method
    name = "sarah"
    p name
    "fred"
  end
  #versus
  def example_method2
    name = "sarah"
    p name
    return name
    "fred"
  end
  #what does it mean to 'return' something?
  ```

  - how to pass arguments to a function

  ```ruby
  def do_a_dance(dance1, dance2)
    p dance1
    dance2
  end
  ```

  - ruby and parethesis, or lack there of

  ```ruby
  def do_a_dance dance1, dance2 
    p dance1
    dance2
  end
  ```

  - what is the difference between 1 and "1"

  ```ruby
  p "1"
  p "1".class
  p 1
  p 1.class
  ```

  - if else control flow

  ```ruby

  def make_a_decision_based_on_input(condition)
    if condition is true
      p "the condition was true"
    else
      p "the conditioin was not true"
    end
  end

  ```

  - what does nil mean ?
  ### http://amydoesruby.blogspot.com/2006/03/what-does-nil-mean.html
  ###### "Thanks for answering, Gerg, but honestly, it sounds like this in my head when I read it: "blah blah blah bladdy blah blah.""

  ```ruby

  p nil
  p nil.class
  p 0/1
  p 1/0
  p [ nil, 1, true, false ]
  p [ nil, 1, true, false ].compact

  ```


  - array manipulation, array traversal

  ```ruby
  names = [ "jim", "john", "erik", "michelle"]
  # how to view the first name ?
  p names[0]
  # arrays are 'zero' index, ie, each name corresponds to an integer
  # starting at 0
  # how to view the last name ?
  p names[-1]
  # whats the difference? 
  p names[3]
  # how to change jim to jake ? 
  names[0] = "jake"
  p names
  # how to show the first 2 names ? 
  p names[0..1]
  # what is .. ? 
  # what do the brackets mean when written like names[ ] ?
  # what is the purpose of an array ?
  ```

  - use of ruby enumeratives/enumerables

  ```ruby
  names = [ "jim", "john", "erik", "michelle"]
  new_names = names.each do |n|
    p n.reverse
  end
  #will the below print true or false ? (...congruency... woohahaha)
  p names == new_names
  actually_new_names = names.map do |n|
    n.reverse
  end
  p new_names == actually_new_names
  names = [ "john", "john", "erik", "michelle"]
  john = names.select {|name| name == "john"}
  p john
  ```
  
  - hash manipulation, hash traversal, symbols, k/v pairs
  ```ruby
  people = { john: "davison", mike: "the mechanic", sally: "fields"}
  p people
  person = { first: "john", last: "davison", }
  # what is the element ':first' called ? 
  p person[:first]

  ```
  - understand the difference between 'indexed' arrays and unsorted hashes

  ```ruby

  ```

