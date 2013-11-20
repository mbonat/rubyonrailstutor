#RUBYONRAILSTUTOR.COM
##MODELS


### STRATEGIC LEARNING GOALS
1.  Understand what it means to instantiate an object that inherits from an active record object.
1.  Understand how CREATE, READ, UPDATE, DESTROY [ CRUD ] an instance of a data model.
1.  Begin to understand how Active Record govern SQL relatioships between models.

### CRITICAL RESOURCES

http://guides.rubyonrails.org/migrations.html

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

1. UPDATE a data model

  > In order to UPDATE a model, you must first retrieve the model, then invoke a function on it that updates a value or attribute.

  ```ruby
    message = Message.last
    message.content = "now the message has really changed"
    message.save
  ```

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.02.11%20PM.png)

1. DESTROY a data model

  > In order to DESTROY a model, you must first retrieve the model, then invoke a function on it that destroys the entire object.

  ```ruby
    message = Message.last
    message.destroy
  ```

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.09.02%20PM.png)

1.  Understand how to add unique functions to a model and call them.

  > Consider the below model definition, app/models/message.rb

  ```ruby
    class Message < ActiveRecord::Base
      def shorten!
        self.content = self.content[0..119]
      end

      def remove_profanity
        ['bad word', 'another bad word','and another' ].each do |profanity|
          self.content.gsub!("#{profanity}", "")
        end
      end

      def add_smiles
        return if content.empty?
        self.content << ":)"
      end
    end
  ```

  > .shorten!, .remove_profanity and .add_smiles are all programmer defined functions that can be called on an instance of a Message.this is how programmers give data models custom logic, anything you can think about, you can program here.

  ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.33.35%20PM.png)

1.  Understand how to create one to many relationship between different models, notice that we are creating another migration to add the person_id attribute to messages.  Active record doesn't immediately create that for us but when the attributes are present, and model definitions made correctly, Active Record will give us access to the linked objects.  

    ```ruby

    rails g model person name:string

    rails g migration AddPersonIdToMessage

    bundle exec rake db:migrate

    ```

    > Active Record provides many useful methods and tools to create relationships between models. Consider the below model definitions, not that in Person 'has_many' :messages and Message 'belongs_to' :person

    ```ruby

    class Person < ActiveRecord::Base
      has_many :messages
    end

    class Message < ActiveRecord::Base
      belongs_to :person
      def shorten!
        self.content = self.content[0..119]
      end

      def remove_profanity
        ['bad word', 'another bad word','and another' ].each do |profanity|
          self.content.gsub!("#{profanity}", "")
        end
      end

      def add_smiles
        return if content.empty?
        self.content << ":)"
      end
    end

    ```

    > Active record now give us access to the relationship created between Person and Message.

    ![ScreenShot](https://dl.dropboxusercontent.com/u/12834645/railstutor/lessons/Screen%20Shot%202013-11-19%20at%2010.57.19%20PM.png)

