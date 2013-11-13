class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find_by_id(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.create( content: params[:message][:content])
    redirect_to root_path
  end

  def edit
    binding.pry
    @message = Message.find_by_id(params[:id])
  end

  def update
    @message = Message.find_by_id(params[:id])
    @message.content = params[:message][:content]
    @message.save
    redirect_to root_path
  end

  def destroy
    @message = Message.find_by_id(params[:id])
    @message.destroy
    redirect_to root_path
  end
end
