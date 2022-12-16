class CommentsController < ApplicationController

    before_action :set_article, only: %i[ create destroy ]
    before_action :set_comment, only: %i[ destroy ]
    def create
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
    def set_article
        @article = Article.find(params[:article_id])
    end

    def set_comment
        @comment = @article.comments.find(params[:id])
    end

    def comment_params 
        params.require(:comment).permit(:commenter, :body)
    end

end
