class ArticlesController < ApplicationController
  def new
    #need to init articles, otherwise checking for @article.errors.any? would throw an error.
    @article = Article.new
  end

  def edit
    @article = Article.new(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
