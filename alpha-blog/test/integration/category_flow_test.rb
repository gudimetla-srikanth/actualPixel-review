require "test_helper"

class CategoryFlowTest < ActionDispatch::IntegrationTest
  test "testing category flow" do 
    get '/'
    assert_response :success
    get '/login'
    assert_response :success
    post '/login',params:{user:{email:"srikanth@gmail.com",password:"12345678"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    get new_category_path 
    assert_response :redirect
  end
end
