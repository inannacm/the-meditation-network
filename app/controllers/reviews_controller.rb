class ReviewsController < ApplicationController
  def index
  end

  def new
    @group = Group.find(params[:group_id])
    @review = Review.new
  end

  def create
    @group = Group.find(params[:group_id])
    @review = Review.new(review_params)

    @review.group = @group
    @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      redirect_to new_group_review(@group)
    end
  end

  def show
  end

   def review_params
    params.require(:review).permit(:user_id, :group_id, :content, :rating)
  end
end


