require "test_helper"

class TodosFlowTest < ActionDispatch::IntegrationTest
  test "testing the flow" do 
    get todos_path
    assert_response :success 
    post todos_path,params:{todo:{name:"srinivas"}}
    assert_response :redirect 
    follow_redirect!
    assert_response :success
  end
end
