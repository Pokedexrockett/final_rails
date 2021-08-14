class GrowersController < ApplicationController

    def index
        if @grower = Grower.find_by_id(params[:grower_id])
            @strains = @grower.strains
        else
            @strains = strain.all
        end
    end

    def show
        @grower = Grower.find_by_id(params[:id])
    end

    def new
        @grower = Grower.new
    end

    def create
        @grower = Grower.create(grower_params)
        if @grower
            redirect_to grower_path(@grower)
        else
            render :new
        end
    end

    def edit
        @grower = Grower.find(params[:id])
    end

    def update
        @grower.update(grower_params)
        if @grower.save
            redirect_to grower_path(@grower)
        else
            render :edit
        end
    end

    def destroy

    end

    def grower_params
        params.require(:grower).permit(:name)
      end


end
