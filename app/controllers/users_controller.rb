class UsersController < ApplicationController

  def index

  end



  def create


    @user = User.new(user_params)
    @user.save

    redirect_to user_index_path

  end

  def new
    @user = User.all

  end

  def show
    @user = User.find(params[:id])
  end

   def subjects
  @user = User.find(params[:id])

   @existing = []

   Subject.all.each do |subject|

    if subject.user_id == @user.id
      @existing << subject.name
    end
  end
   @test  = "this is test"
  render :subject
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:role,:first_name,:last_name,:profile)
  end



end
