class CommentsController < ApplicationController
    def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    @comment.comment = params[:comment]
    @comment.user_id = params[:user_id]
    @comment.save
    
    redirect_to @post

    end
end
