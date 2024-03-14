require "test_helper"

class RodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rod = rods(:one)
  end

  test "should get index" do
    get rods_url
    assert_response :success
  end

  test "should get new" do
    get new_rod_url
    assert_response :success
  end

  test "should create rod" do
   ("Rod.count assert_difference") do
      post rods_url, params: { rod: {  } }
    end

    assert_redirected_to rod_url(Rod.last)
  end

  test "should show rod" do
    get rod_url(@rod)
    assert_response :success
  end

  test "should get edit" do
    get edit_rod_url(@rod)
    assert_response :success
  end

  test "should update rod" do
    patch rod_url(@rod), params: { rod: {  } }
    assert_redirected_to rod_url(@rod)
  end

  test "should destroy rod" do
    assert_difference("Rod.count", -1) do
      delete rod_url(@rod)
    end

    assert_redirected_to rods_url
  end
end
