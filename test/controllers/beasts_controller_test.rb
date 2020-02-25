require 'test_helper'

class BeastsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get beasts_new_url
    assert_response :success
  end

  test "should get edit" do
    get beasts_edit_url
    assert_response :success
  end

end
