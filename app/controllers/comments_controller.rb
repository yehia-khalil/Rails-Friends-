class CommentsController < ApplicationController
    before_action :authenticate_user!
    def create 
        @friend=Friend.find(params[:friend_id])
        @comment=@friend.comment.create(params.require(:comment).permit(:commenter, :body))
        redirect_to friend_path(@friend)
    end
    before_action :authenticate_user!
    def destroy
        @friend=Friend.find(params[:friend_id])
        @comment=Comment.find(params[:id])
        @comment.destroy
        redirect_to friend_path(@friend)
    end

end
