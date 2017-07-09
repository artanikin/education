class Web::GroupsController < Web::ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy]
  before_action :set_users, only: [:new, :edit]

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to groups_path, notice: "Group was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path, notice: "Group was successfully created"
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path, notice: "Group successfully deleted"
  end

  private

  def group_params
    params.require(:group).permit(:title, user_ids: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def set_users
    @users = User.all.order(:last_name).decorate
  end
end
