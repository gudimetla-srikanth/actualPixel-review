require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert_difference("Todo.count",1) do
      post todos_path,params:{todo:{name:"sattaiah"}} 
    end
  end
end
