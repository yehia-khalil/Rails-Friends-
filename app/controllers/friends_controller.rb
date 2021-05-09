class FriendsController < ApplicationController
    def index
        @all = Friend.all
    end
    def new
        @new ="form"
    end
    def create
        @friend = Friend.new(params.require(:friends).permit(:name,:age))
        @friend.save
        redirect_to @friend
    end
    def show
        @friend = Friend.find(params[:id])
    end


end
