require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "the articles page" do 
    get articles_path 
    assert_response :success
  end
  test "the signin page" do 
    get signin_path
    assert_response :success
  end
  test "the show page" do 
    @article = Article.new(article_name:"Hii baby")
    @article.save
    get article_path(@article)
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
