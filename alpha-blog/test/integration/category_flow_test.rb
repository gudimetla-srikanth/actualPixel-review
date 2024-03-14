require "test_helper"

class CategoryFlowTest < ActionDispatch::IntegrationTest
  test "testing category flow" do 
    get new_category_path 
    assert_response :success
  end
end
