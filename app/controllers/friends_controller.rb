class FriendsController < ApplicationController
    before_action :authenticate_user!
    def index
        @all = Friend.all
    end
    before_action :authenticate_user!
    def new
        @new ="form"
        @friend = Friend.new()
    end
    before_action :authenticate_user!
    def create
        @friend = Friend.new(params.require(:friends).permit(:name,:age))
        if @friend.save
            redirect_to @friend
        else
            render 'new'
        end
    end
    before_action :authenticate_user!
    def show
        @friend = Friend.find(params[:id])
    end
    before_action :authenticate_user!
    def edit
        @friend = Friend.find(params[:id])
    end
    before_action :authenticate_user!
    def update
        @friend = Friend.find(params[:id])
        if @friend.update(params.require(:friend).permit(:name,:age))
            redirect_to @friend
        else
            render 'edit'
        end
    end

    before_action :authenticate_user!
    def destroy
        @friend = Friend.find(params[:id])
        @friend.destroy
    
        redirect_to friends_path
    end


end
