class MessagesController < ApplicationController

  def new

  end

  def create
    @message = Message.new(message_attributes)

    if @message.save
      render :json
    else
      render json: { status: :error }
    end
  end

  def show
    @message = Message.find_by(id: params[:id])

    if @message
      render :show
    else
      render json: { status: :error }
    end
  end

  private
  def message_params
    params.require(:message).permit(:headers, :parts)
  end

  def find_attributes
    message_attributes = {}

    message_params[:headers].each do |head|
      if head["name"] === "Subject"
        message_attributes[:subject] = head["value"]
      elsif head["name"] === "From"
        message_attributes[:from] = head["value"]
      elsif head["name"] === "To"
        message_attributes[:to] = head["value"]
      elsif head["name"] === "Date"
        message_attributes[:date] = head["value"]
      end
    end

    message_params[:parts].each do |part|
      if part["mimeType"] === "text/html"
         message_attributes[:body] = part["body"]["data"]
      end
    end

    message_attributes
  end

end
