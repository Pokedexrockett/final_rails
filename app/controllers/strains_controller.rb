class StrainsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_strain, only: [:show, :edit, :update] 

    def new 
        @strain = Strain.new  
        @strain.build_grower 
    end 

    def create
        @strain = Strain.new(strain_params) 
        @strain.user_id = session[:user_id] 
   
       if @strain.save 
         redirect_to strain_path(@strain) 
       else
        @strain.build_grower  
         render :new 
       end
     end

    def index   
      if params[:grower_id]
        grower = Grower.find(params[:grower_id])
        @strains = grower.strains 
      
      else 
        @strains = Strain.order_by_rating.includes(:grower) 
      end 
    end 

    def show 
    end 

    def edit 
      if authorized_to_edit?(@strain) 
       render :edit   
      else 
       redirect_to strain_path(@strain)   
      end
     end 

    def update   
      if @strain.update(strain_params)
        redirect_to strain_path(@strain)
      else
        render :edit
      end 
    end 

    # def destroy  
    #   @strain = Strain.find(params[:id])      
    #   @strain.destroy
    #   redirect_to strains_path
    # end

 

    private 

    def strain_params
        params.require(:strain).permit(:name, :category, :thc, :cbd, :grower_id, grower_attributes: [:name])
      end

    def set_strain
        @strain = Strain.find_by(id: params[:id])
        redirect_to strains_path if !@strain 
     end

     def redirect_if_not_authorized 
      if @strain.update(name: params[:name], category: params[:category], thc: params[:thc], cbd: params[:cbd])   
        redirect_to strain_path(@strain)
      else
        redirect_to user_path(current_user)     
      end 
    end

end