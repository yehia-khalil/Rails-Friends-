class FriendsController < ApplicationController
    before_action :authenticate_user!
    def index
        @all = Friend.all
    end

    def new
        @new ="form"
        @friend = Friend.new()
    end

    def create
        @friend = Friend.new(params.require(:friends).permit(:name,:age))
        if @friend.save
            redirect_to @friend
        else
            render 'new'
        end
    end

    def show
        @friend = Friend.find(params[:id])
    end

    def edit
        @friend = Friend.find(params[:id])
    end

    def update
        @friend = Friend.find(params[:id])
        if @friend.update(params.require(:friend).permit(:name,:age))
            redirect_to @friend
        else
            render 'edit'
        end
    end

    
    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
    
        redirect_to friends_path
    end


end
