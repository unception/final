require 'test_helper'

class PublishedArticlesControllerTest < ActionController::TestCase
  setup do
    @published_article = published_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:published_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create published_article" do
    assert_difference('PublishedArticle.count') do
      post :create, published_article: { abstract: @published_article.abstract, author: @published_article.author, category: @published_article.category, contents: @published_article.contents, name: @published_article.name }
    end

    assert_redirected_to published_article_path(assigns(:published_article))
  end

  test "should show published_article" do
    get :show, id: @published_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @published_article
    assert_response :success
  end

  test "should update published_article" do
    patch :update, id: @published_article, published_article: { abstract: @published_article.abstract, author: @published_article.author, category: @published_article.category, contents: @published_article.contents, name: @published_article.name }
    assert_redirected_to published_article_path(assigns(:published_article))
  end

  test "should destroy published_article" do
    assert_difference('PublishedArticle.count', -1) do
      delete :destroy, id: @published_article
    end

    assert_redirected_to published_articles_path
  end
end
