class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update]

    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.create comment_params
        redirect_to @comment
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        @comment.update comment_params
        redirect_to @comment
    end

    private
        def set_comment
            @comment = Comment.find(params[:id])
        end

        def comment_params
            params.require(:comment).permit(:content, :images)
        end
end
