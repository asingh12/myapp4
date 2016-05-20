require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | COMP 405 FINAL App"

  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | COMP 405 FINAL App"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | COMP 405 FINAL App"
  end


end
