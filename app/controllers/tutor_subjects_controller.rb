class TutorSubjectsController < ApplicationController
  before_action :set_tutor_subject, only: [:show, :edit, :update, :destroy]

  # GET /tutor_subjects
  # GET /tutor_subjects.json
  def index
    @tutor_subjects = TutorSubject.all
  end

  # GET /tutor_subjects/1
  # GET /tutor_subjects/1.json
  def show
    @user = User.find(params[:id])

     @existing = [1,2]
     @test  = "this is test"
     TutorSubject.all.each do |subject|

      if subject.tutor_id == @user.id
        @existing << subject.subject_id
   end
 end
end
  # GET /tutor_subjects/new
  def new
    @tutor_subject = TutorSubject.new
  end

  # GET /tutor_subjects/1/edit
  def edit
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
     @existing = [1]
     byebug
  #render "users/(@userid)/subjects"
   redirect_to "tutor_subjects/1"

  end

  # POST /tutor_subjects
  # POST /tutor_subjects.json
  def create
    @tutor_subject = TutorSubject.new(tutor_subject_params)

    respond_to do |format|
      if @tutor_subject.save
        format.html { redirect_to @tutor_subject, notice: 'Tutor subject was successfully created.' }
        format.json { render :show, status: :created, location: @tutor_subject }
      else
        format.html { render :new }
        format.json { render json: @tutor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutor_subjects/1
  # PATCH/PUT /tutor_subjects/1.json
  def update
    respond_to do |format|
      if @tutor_subject.update(tutor_subject_params)
        format.html { redirect_to @tutor_subject, notice: 'Tutor subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutor_subject }
      else
        format.html { render :edit }
        format.json { render json: @tutor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutor_subjects/1
  # DELETE /tutor_subjects/1.json
  def destroy
    @tutor_subject.destroy
    respond_to do |format|
      format.html { redirect_to tutor_subjects_url, notice: 'Tutor subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor_subject
      @tutor_subject = TutorSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_subject_params
      params.require(:tutor_subject).permit(:tutor_id, :subject_id)
    end
end
