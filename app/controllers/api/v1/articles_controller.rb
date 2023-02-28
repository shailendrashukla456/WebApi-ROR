class Api::V1::ArticlesController < ApplicationController
  def index
    article = Article.all
    render json: article,status:200
  end

  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: article, status: 200
    else
      render json: { error: "id not found"}
    end
  end

  def create
    article  = Article.new(
      title:article_params[:title],
      body:article_params[:body],
      author:article_params[:author]
    )
    if article.save
      render json: article, status:200
    else
      render json: { error: "Error creating"}
    end
  end

  def update
    article = Article.find_by(id: params[:id])
    if article
      article.update(title: params[:title], body: params[:body], author: params[:author])
      render json: "Data update successfully"
    else
      render json: "something went wrong"
    end
  end

  def destroy
    article = Article.find_by(id: params[:id])
    if article
      article.destroy
      render json: "date delete successfully"
    else
      render json: {error: "something went wrong"}
    end
  end

  private
  def article_params
    params.require(:article).permit([
      :title,
      :body,
      :author,
    ])
  end
end
