class GrowersController < ApplicationController

    def index
        growers = Grower.all
    end

    def show
        growers = Grower.find_by_id(params[:id])
    end

    def new
        growers = Grower.new
    end

    def create
        growers = Grower.new
        redirect_to grower
    end

    def update

    end

    def destroy

    end

    def grower_params
        params.require(:attraction).permit(:name)
      end


end
