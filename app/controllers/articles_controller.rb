class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 4)
  end

  def search 
    @articles = Article.where("title LIKE ?", "%" + params[:q] + "%")
  end

  def filter
    @articles = Article.where("category LIKE ?", "%" +  params[:filter] + "%")
  end

  def show 
    @article = Article.find(params[:id])
  end

  def new 
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit 
    @article = Article.find(params[:id])
  end

  def update 
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit
    end
  end

  def destroy 
    @article = Article.find(params[:id])
    @article.destroy 

    redirect_to root_path
  end

  private 
    def article_params 
      params.require(:article).permit(:title, :body, :status, :category, :page, :header_image)
    end 

end
