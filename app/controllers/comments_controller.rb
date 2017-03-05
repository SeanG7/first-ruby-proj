class CommentsController < ApplicationController
  def create
    #need to get the correct article resource
    @article = Article.find(params[:article_id])
    #creating a new comment, based on the action called from @article
    @comments = @article.comments.create(comment_params)
    #send back to the article once comment is added
    redirect_to article_path(@article)
  end

  def destory
    @article = Article.find(params[:article_id])
    @article.comment.destroy

    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
