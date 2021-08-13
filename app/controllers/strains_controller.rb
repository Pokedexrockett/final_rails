class StrainsController < ApplicationController
    
    def index
        strains = Strain.all
    end

    def show
        strains = Strain.find_by_id(params[:id])
 
    end

    def new
        strains = Strain.new

    end

    def create
        strains = Strain.new
        redirect_to strain

    end

    def update

    end

    def destroy

    end

    def strain_params
        params.require(:strain).permit(:name, :category, :thc, :cbd, :rating, :notes)
      end
end
