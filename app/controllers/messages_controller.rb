class MessagesController < ApplicationController

  def new

  end

  def create

  end

  def show
    @message = Message.find_by(message_params[:message_id])
  end



  private
  def message_params
    params.require(:message).permit(:message_id, :subject, :to, :from, :snippet, :date)
  end

end
