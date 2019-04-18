class StudentTutorController < ApplicationController

    def index
    # @userid = self
    
    end
    def select
        
        par = params[:select].values
        id = params[:id]
        
        x = StudentTutor.find_by(Tutor_subject_id: params[:id])

            if par[0] == "1"

                x.update(status: "a")
            else  
        
                x.update(status: "d")
            end     
        #byebug 
        tutor = x.tutor_subject_id
        y = TutorSubject.find(tutor).tutor_id

            #render :tutorrequest
            redirect_to action: "tutorrequest", id: y 
        end  
    
        def appointment
            @store = []
            id = params[:id].to_i
            @id = id
            @tutorial =  TutorSubject.where(tutor_id: id)
            @studenttutor = StudentTutor.where(status: "a")    
            @studenttutor.each do |student|
            if @tutorial.where(id: student.tutor_subject_id) != nil 
              
             @store << student.tutor_subject_id
            end
         end  
            @student 
            @test =(params[:id])
            @coll = ["approve","deny"]
            @person = ["a"]
            
          
        
        end     
    
    def student

        byebug 
            render :index
       end  


    def show
    @userid = params[:id]
    @test = params[:id]
    render :show
    @tutor = []
    @user = nil
    @message = nil
    end
    def create
       @@s
       tutor_id = params[:tutor_id][:tutor_id]
        @tutor_id = tutor_id.to_i
        
        student_id = params[:id]
        @studentid = student_id.to_i
        @subject_id =@@s
 #   if TutorSubject.find_by(subject_id: @subject_id,tutor_id: @tutor_id) == nil 
        @tutorsubject =TutorSubject.find_by(subject_id: @subject_id,tutor_id: @tutor_id)
        new = StudentTutor.new
        new.tutor_subject_id = @tutorsubject.id
        new.student_id = @studentid
        new.status = "p"
        new.save 
       redirect_to student_tutor_path(@studentid)
  #  else 
    #    @message = "You have already have this tutor "
        
     #   @tutor = []

   # end  
   end    

   def tutorrequest
    @store = []
    id = params[:id].to_i
    @id = id
    @tutorial =  TutorSubject.where(tutor_id: id)
    @studenttutor = StudentTutor.where(status: "p")    
    @studenttutor.each do |student|
   if @tutorial.find_by(id: student.tutor_subject_id) != nil 
      
     @store << student.tutor_subject_id
    end 
     end
    @student 
    @test =(params[:id])
    @coll = ["approve","deny"]
    @person = ["a"]
    #byebug      

 
    
    render :tutorrequest


   end  
    
    def post
        @message = nil 
        subjectid = params[:subject_id].values
        subid = subjectid[0]
        @sid = subid.to_i
        @@s = @sid
        @studentid = params[:id]
        @tutor = []
        @user = []
        @test = params[:id]
        TutorSubject.all.each do |tutor|
            if tutor.subject_id == @sid
                @tutor << tutor.tutor_id
            end    
        end     
         @tutor.each do |user|
            @user << User.all.find(user)
         end 
           
         #redirect_to action: "post", id: params[:id] 
      render :show
    end 
    private 

    def user_params
        params.require(:student_tutor).permit(:tutor_id,:subject_id)
    end
   
    end 
    