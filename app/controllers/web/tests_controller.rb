class Web::TestsController < Web::ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
    respond_with(@tests = Test.all)
  end

  def show
  end

  def new
    respond_with(@test = Test.new)
  end

  def create
    respond_with(@test = Test.create(test_params), location: -> { tests_path })
  end

  def edit
  end

  def update
    @test.update(test_params)
    respond_with(@test, location: -> { tests_path })
  end

  def destroy
    respond_with(@test.destroy, location: -> { tests_path })
  end

  private

  def test_params
    params.require(:test).permit(:title, :description)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end

