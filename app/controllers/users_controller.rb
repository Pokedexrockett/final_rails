class UsersController < ApplicationController
    def new
        users = User.new
    end

    def create

    end

    def show
        users = User.find_by_id(params[:id])
    end
end
