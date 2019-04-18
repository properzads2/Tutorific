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
   @notincluded = []
   @subjecttochoose = []
   @final = []
   @subjectnames = []
   TutorSubject.all.each do |subject|

    if subject.tutor_id == @user.id
      @existing << subject.subject_id
      
    end
     end
      
     Subject.all.each do |subject|
     
     @subjecttochoose << subject.id
     
     end 
     @final = @subjecttochoose - @existing
     
     @final.each do |subject|
       @subjectnames << Subject.all.find(subject)
     end  
     
   @test  = "this is test"
   #redirect_to "users/subjects/#{@user.id}"
   render :subject
  end
    


    def subjectupdate
      @userid =  params[:id]
      @subjectid = params[:subject_id].values
      @subjectid.join
      @subject = @subjectid[0].to_i
      new = TutorSubject.new
       new.tutor_id = @userid
       new.subject_id = @subject
       new.save
       subjects()
       #render :subject
    #render "users/(@userid)/subjects"
     #redirect to user_path
    end
  private

  def user_params
    params.require(:user).permit(:email,:password,:role,:first_name,:last_name,:profile,:subject_id)
  end



end
