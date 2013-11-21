require 'test_helper'

class ShipsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get havefun" do
    get :havefun
    assert_response :success
  end

  test "should get dance" do
    get :dance
    assert_response :success
  end

end
