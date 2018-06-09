class StaticPagesController < ApplicationController
  def home
    @products = Product.order("created_at DESC").limit(5)
    @entries = Entry.order("created_at DESC").limit(1)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
