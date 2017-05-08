class PublishedArticlesController < ApplicationController
  http_basic_authenticate_with name: "editor", password: "secret", only: [:edit, :destroy]
  before_action :set_published_article, only: [:show, :edit, :update, :destroy]

  # GET /published_articles
  # GET /published_articles.json
  def index
    @published_articles = PublishedArticle.all
  end

  # GET /published_articles/1
  # GET /published_articles/1.json
  def show
  end

  # GET /published_articles/new
  def new
    @published_article = PublishedArticle.new
  end

  # GET /published_articles/1/edit
  def edit
  end

  # POST /published_articles
  # POST /published_articles.json
  def create
    @published_article = PublishedArticle.new(published_article_params)

    respond_to do |format|
      if @published_article.save
        format.html { redirect_to @published_article, notice: 'Published article was successfully created.' }
        format.json { render :show, status: :created, location: @published_article }
      else
        format.html { render :new }
        format.json { render json: @published_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /published_articles/1
  # PATCH/PUT /published_articles/1.json
  def update
    respond_to do |format|
      if @published_article.update(published_article_params)
        format.html { redirect_to @published_article, notice: 'Published article was successfully updated.' }
        format.json { render :show, status: :ok, location: @published_article }
      else
        format.html { render :edit }
        format.json { render json: @published_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /published_articles/1
  # DELETE /published_articles/1.json
  def destroy
    @published_article.destroy
    respond_to do |format|
      format.html { redirect_to published_articles_url, notice: 'Published article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_published_article
      @published_article = PublishedArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def published_article_params
      params.require(:published_article).permit(:name, :author, :abstract, :contents, :category)
    end
end
