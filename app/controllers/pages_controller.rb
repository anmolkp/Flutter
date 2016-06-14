class PagesController < ApplicationController
  #back-end code for pages/index view
  def index
  end
  #back-end code for pages/home view
  def home
  end
  #back-end code for pages/profile view
  def profile
    if (User.find_by_username(params[:id]))
    @username = params[:id]
  else
    redirect_to root_path , :notice => "User not found ! "
  end
end
  #back-end code for pages/explore view
  def explore
  end
end
