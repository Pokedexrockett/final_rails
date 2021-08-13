class StrainsController < ApplicationController
    before_action :redirect_if_not_logged_in 

    
    def index
        if @grower = Grower.find_by_id(params[:grower_id])
            @strains = @grower.strains
        else
            @strains = Strain.all
        end
    end

    def show
        @strain = Strain.find_by_id(params[:id])
 
    end

    def new
        if @grower = Grower.find_by_id(params[:grower_id])
            @strain = @grower.Strains.build
        else
            @strain = Strain.new
        end
    end

    def create
        @strain = Strain.create(strain_params)
        if @strain
            redirect_to strain_path(@strain)
        else
            render :new
        end
    end

    def edit
        @strain = Strain.find(params[:id])
    end

    def update
        @strain.update(strain_params)
        if @strain.save
            redirect_to strain_path(@strain)
        else
            render :edit
        end
    end

    def destroy

    end

    def strain_params
        params.require(:strain).permit(:name, :category, :thc, :cbd, :rating, :notes)
      end
end
