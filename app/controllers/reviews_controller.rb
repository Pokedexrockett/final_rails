class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in 
    
    def new
        if @strain = Strain.find_by_id(params[:strain_id])
          @review = @strain.reviews.build
        else
          @review = Review.new
        end
      end

      def create
        @review = Review.new(review_params)
        @review.user = current_user
        if @review.save
          redirect_to review_path(@review)
        else
          render :new
        end
      end

    def show
        @review = Review.find_by_id(params[:id])
    end
    
    def index
    if @strain = Strain.find_by_id(params[:strain_id])
          @reviews = @strain.reviews
        else
          @reviews = Review.all
        end
      end

    private 

    def review_params
        params.require(:review).permit(:strain_id, :form, :note, :pot_leaves)  
    end 



end