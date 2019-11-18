class PagesController < ApplicationController
  def home
    @groups = Group.limit(6).order(created_at: :desc)
  end

  def dashboard
     @user = current_user
  end
end
