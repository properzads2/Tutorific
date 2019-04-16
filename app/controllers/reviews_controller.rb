class ReviewsController < ApplicationController
 
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end 

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to review_path(@review)
        else
            render :new
        end 
    end 

    def edit
        @review = Review.find(params[:id])
    end 

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            render :edit
        end 
    end 

    def destroy
        Review.destroy(params[:id])
        redirect_to review_path(@review)
    end  
    
    private

    def review_params
        params.require (:review).permit(:student_tutor_id, :rating, :comments)
    end 

end
