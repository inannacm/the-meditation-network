class SessionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
    @session = Session.new
    @group = Group.find(params[:group_id])
  end

   def create
    @group = Group.find(params[:group_id])
    @session = Session.new(session_params)

    @session.group = @group
    @session.user_id = current_user.id
    if @session.save!
      redirect_to root_path
    else
      redirect_to new_group_session_path
    end
    # @purchase.save
  end

  def show
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:user_id, :group_id, :date)
  end
end
