class ArticlesController < ApplicationController
  before_action :guard_other, only: [:new, :edit]

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	@article.writer_id = current_writer.id
  	if @article.save
  	  redirect_to article_path(@article)
  	else
  	  redirect_back(fallback_location: root_url)
  	end
  end

  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  	if @article.update(article_params)
  	  redirect_to article_path(@article)
  	else
  	  redirect_back(fallback_location: root_url)
  	end
  end

  def destroy
  	@article = Article.find(params[:id])
  	if @article.destroy
  	  redirect_to root_path
  	else
  	  redirect_back(fallback_location: root_url)
  	end
  end

  private

  def article_params
  	params.require(:article).permit(:title, :body)
  end

  def guard_other
  	unless writer_signed_in?
  	  redirect_to root_path
  	end
  end
end
