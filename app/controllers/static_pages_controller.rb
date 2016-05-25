class StaticPagesController < ApplicationController

  def index
  end

  def embed(resume_url)
    resume_id = resume_url.split("=").last
    content_tag(:iframe, nil, src: "//resume.creddle.io/embed/#{resume_id}")
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
