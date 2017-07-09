class Web::GroupsController < Web::ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:new, :edit]

  def index
    respond_with(@groups = Group.all)
  end

  def show
  end

  def new
    respond_with(@group = Group.new)
  end

  def create
    respond_with(@group = Group.create(group_params), location: -> { groups_path })
  end

  def edit
  end

  def update
    @group.update(group_params)
    respond_with(@group, location: -> { groups_path })
  end

  def destroy
    respond_with(@group.destroy, location: -> { groups_path })
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
