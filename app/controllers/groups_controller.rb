class GroupsController < ApplicationController
 # before_action :load_map, only: [:show, :index]


  def index
    # @groups = Group.all
    @groups = Group.geocoded.filter(params.slice(:city, :structure, :style)).order(created_at: :desc)
    # @groups = Group.geocoded

    @markers = @groups.map do |group|
      {
        lat: group.latitude,
        lng: group.longitude,
        infoWindow: render_to_string(partial: "/groups/info_window", locals: { group: group })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end

  end

  def show
    # @group = Group.find(params[:id])
    # @review = Review.new
    @group = Group.geocoded.find(params[:id])

    # @markers = @groups.map do |group|
    #   {
    #     lat: group.latitude,
    #     lng: group.longitude,
    #     infoWindow: render_to_string(partial: "/groups/info_window", locals: { group: group })
    #     # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    #   }
      @markers = [{
        lat: @group.latitude,
        lng: @group.longitude,
        infoWindow: render_to_string(partial: "/groups/info_window", locals: { group: @group })
      }]

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

   def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to root_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :content, :city, :style, :address, :structure, :link, :user_id, :photo)
  end
end
