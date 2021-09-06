class CommentsController < ApplicationController
  before_action :find_article, only: [:create, :destroy]
    def create
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      end
      def destroy
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
      end
      private
      def find_article 
        @article = Article.find(params[:article_id])
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
      end
    end
