class StrainsController < ApplicationController
    
    def index
        @strains = Strain.all
    end

    def show
        @strain = Strain.find_by_id(params[:id])
 
    end

    def new
        @strain = Strain.new

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
