class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @first_message = Message.first
  end
end
