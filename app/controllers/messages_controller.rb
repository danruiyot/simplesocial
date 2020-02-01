class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @messages =Message.find(params[:id])
  end

  def new
  end

  def create
    @messages = Message.new(message_params)
 
    if @messages.save
    redirect_to messages_path
    # redirect_to @messages 
    else
      render 'new'
    end
  end
# Message
  def edit
    @messages =Message.find(params[:id])
  end

  def update
    @messages = Message.find(params[:id])
 
  if @messages.update(message_params)
    redirect_to @messages
  else
    render 'edit'
  end
  end

  def destroy
    @messages =Message.find(params[:id])
    @messages.destroy  
  
    redirect_to messages_path
  end

  private
  def message_params
    params.require(:messages).permit(:message)
  end
end
