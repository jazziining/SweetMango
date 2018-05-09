class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to new_message_url
      flash[:notice] = "Hi! Amanda has received your message and will be in touch with you soon!"
    else
      flash[:notice] = "Sorry, something went wrong. Mind try it again?"
      render :new
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :services, :phone_number, :ideal_date_time, :note)
  end

end
