#RUBYONRAILSTUTOR.COM
##MODELS, MODELS, MODELS

### CLASS FORMAT - DEMONSTRATE, EXPLAIN, REPLICATE

### STRATEGIC LEARNING GOALS
1.  Understand how CREATE, READ, UPDATE, DESTROY [ CRUD ] a data model.

### TACTICAL LEARNING GOALS
1. CREATE a data model

  ```

  rails new messages

  bundle install

  rails generate model message content:string

  bundle exec rake db:migrate

  ```

  > verify that everything works by entering 'rails console' and typing 'Message'

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.10.36%20AM.png)

  > create a new instance of a Message object

  ```ruby
    message = Message.new(content: "hello fun people of the world")
    message.save
  ```
  
  > look for things like BEGIN, COMMIT, TRUE to know that you've saved correctly

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.17.37%20AM.png)


1. READ a data model

  > READ also can mean 'retrieve and look at', records can be retrieved in many ways, by record id, by content, by position in the database...

  ```ruby
    message = Message.find(messageid)
    message = Message.last
    message = Message.all.last
    message = Message.all[-1]
    message = Message.find_by_content("hello fun people of the world")
  ```

  > remember that the local variable 'message' can point to an actual message object or an array that is a container holding many objects ie '[#\<object1>, #\<object2>]'

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.25.00%20AM.png)
