class BookingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
    @booking = Booking.new
    @group = Group.find(params[:group_id])
  end

   def create
    @group = Group.find(params[:group_id])
    @booking = Booking.new(booking_params)

    @booking.group = @group
    @booking.user = current_user
    if @booking.save!
      redirect_to root_path
    else
      redirect_to new_group_booking_path
    end
    # @purchase.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :group_id, :date)
  end
end
