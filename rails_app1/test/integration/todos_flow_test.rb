require "test_helper"

class TodosFlowTest < ActionDispatch::IntegrationTest
  test "testing the flow" do 
    get "/" 
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h1"
  end
end
