class MessagesController < ApplicationController
  def message_of_the_day
    @message = Message.new.choose_one
  end
end
