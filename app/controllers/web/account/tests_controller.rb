class Web::Account::TestsController < Web::Account::ApplicationController
  before_action :set_tests, only: [:show]

  def index
    respond_with(@tests = current_user.tests)
  end

  def show
  end

  private

  def set_tests
    @test = Test.find(params[:id])
  end
end
