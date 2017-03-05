class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    #need to init articles, otherwise checking for @article.errors.any? would throw an error.
    @article = Article.new
  end

  def edit
    #edit just grabs the values for the passed article and then makes those available to the form to fill
    @article = Article.find(params[:id])
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
