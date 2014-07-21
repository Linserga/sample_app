class StaticPagesController < ApplicationController
  
  layout 'application'

  def home
  	@micropost = current_user.micropost.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
