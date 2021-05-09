class FriendsController < ApplicationController
    def new
        @new ="form"
    end
    def create
        render plain: params[:friends][:name].inspect
    end

end
