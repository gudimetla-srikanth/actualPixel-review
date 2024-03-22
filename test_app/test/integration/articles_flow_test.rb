require "test_helper"

class ArticlesFlowTest < ActionDispatch::IntegrationTest
 test "the flow" do
  get '/articles' 
  assert_response :success
  post '/articles',params:{article:{article_name:"i should pass the test case"}}
  assert_response :redirect 
  follow_redirect! 
  assert_response :success
 end
end
