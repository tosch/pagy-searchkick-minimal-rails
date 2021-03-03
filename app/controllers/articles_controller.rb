class ArticlesController < ApplicationController
  include Pagy::Backend
  helper Pagy::Frontend

  def index
    @pagy, @articles = pagy_searchkick(Article.pagy_search(params[:search]))
  end
end
