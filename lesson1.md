#RUBYONRAILSTUTOR.COM - LESSON 1
##STRINGS, HASHES, ARRAYS

### CLASS FORMAT

I demonstrate, explain and then each person in turn replicates.  If you don't know how something works, please pay attention and learn, if you do know how it works, challenge yourself by making sure everyone else in the group can do it, help others extend their learning edges.   

Extra points, good for free beer, find John's knowledge edges on these topics, in a nice friendly way, expose his knowledge edges, learn about the process of realizing that even after doing this 'programming thing' every day for last 555+ days, he too is a beginner.  Even more important, start to think about why retaining a beginner's mind forms the most adaptive, fundamentally powerful way to approach problem solving.   




### LEARNING GOALS

  1. irb vs script.rb

  1. double spacing and indentation, do it. no questions asked.

  1. learn to use http://www.ruby-doc.org/core-2.0.0/

  1. variable instantiation

  ```ruby
  name = "john"
  ```

  1. string manipulation  

  ```ruby
  name = "john".reverse
  p name
  messed_up_name = "j*o*h*n"
  # how to remove ALL the '*' from messed_up_name ?
  p messed_up_name.gsub("*", "")
  #how to find things ? 
  really_messed_up_name = "johnthecookdavison"
  # how to find if 'thecook' exists inside really_messed_up_name ? 
  p really_messed_up_name.match("thecook")
  # bonus points, look up .match , .sub, .gsub and begin to learn about regular expressions.. 
  # http://rubular.com/
  ```

  1. string interpolation

  ```ruby
  first = "john"
  last = "davison"
  full_name = first + last

  # why doesn't the '+' try to 'add' the names ? 

  p full_name
  ```

  1. how to define a function and what functions do

  ```ruby
  #wave if your like 'whats a function?' !!!

  def example_method
    name = "john"
    p "my name is #{name}"
  end
  ```

  1. return values, explicit and implicit

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

  1. how to pass arguments to a function

  ```ruby
  def do_a_dance(dance1, dance2)
    p dance1
    dance2
  end
  ```

  1. ruby and parethesis, or lack there of

  ```ruby
  def do_a_dance dance1, dance2 
    p dance1
    dance2
  end
  ```

  1. what is the difference between 1 and "1"

  ```ruby
  p "1"
  p "1".class
  p 1
  p 1.class
  ```

  1. if else control flow

  ```ruby

  def make_a_decision_based_on_input(condition)
    if condition is true
      p "the condition was true"
    else
      p "the conditioin was not true"
    end
  end

  ```

  1. what does nil mean ?
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


  1. array manipulation, array traversal

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

  1. use of ruby enumeratives/enumerables

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
  
  1. hash manipulation, hash traversal, symbols, k/v pairs

  ```ruby

  people = { john: "davison", mike: "the mechanic", sally: "fields"}
  p people
  person = { first: "john", last: "davison", first: "john", last: "davison" }
  p person

  # why does "first" only get printed once ? 

  # what is the element ':first' called ? 

  person = { first: "john", last: "davison" }
  p person[:first]
  first_names = person.keep_if {|key, value| key == :first}

  #is the above even useful ? 

  ```

  1. contemplate the difference between 'indexed' arrays and unsorted hashes
  1. build and manipulate nested arrays, hashes
  
  ### EXERCISES FOR REPETITION

  * create a method that does something to a string, add a string to an array, call the method you just made on that string, look what a regular expression is, try using .match() on the string (will get beer points).
  * create a method that accepts a string, make sure the string has characters like %,$,#,@ in it, return the same string with any special characters removed.(very useful for internet forms...)
  - build a method that accepts as an argument, an array that looks like [1, [2], {three: "3"}] and returns [ Integer, Array, Hash ]
  - build a method that accepts an array that looks like [["john", "the cook"], ["mike", "the builder"], ["sally", "the coder"]] and returns {{first: "john", job: "the cook"}, {first: "mike", job: "the builder"}, { first: "sally", job: "the coder"}}
  - build a method, create an array that looks something like [1,2,3,4,5,6,7,8,9] that returns [[2,4,6,8], [1,3,5,7,9]], way extra points, create rspec tests that ensure this behaves as written.
  - go find a piece of data related to something you want to build a prototype around, put that data into a data form that makes sense, ie, string, hash, array, integer, whatever, create a method that manipulates that piece of data in a way that enhances its value to you and potentialy to someone you might communicate it too, present your method to the group, explaining how it works and how you think the method adds value to the data. (this is not trivial, it shows how just programming alone doesn't add value, value relates to context....)



  ### FOOD FOR THOUGHT

  * CRUD means create read update and destroy, it represents the fundamental nature of what MVC based software on the internet does.  Think about all the different steps involved in this page and what step they refer to, are they creating, modify, reading or destroying data?  
