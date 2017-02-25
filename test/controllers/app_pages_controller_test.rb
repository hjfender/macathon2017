require 'test_helper'

class AppPagesControllerTest < ActionController::TestCase
  test "should get filter" do
    get :filter
    assert_response :success
  end

  test "should get book" do
    get :book
    assert_response :success
  end

end
