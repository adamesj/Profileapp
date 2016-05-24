class StaticPagesController < ApplicationController
  def index
  end
  def thank_you
  @f_name = params[:f_name]
  @l_name = params[:l_name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'jimmy.adames@gmail.com',
      :subject => "A new contact message from #{@f_name} #{@l_name}",
      :body => @message).deliver_now
  end
end
