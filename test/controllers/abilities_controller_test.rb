require 'test_helper'

class AbilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get abilities_new_url
    assert_response :success
  end

  test "should get create" do
    get abilities_create_url
    assert_response :success
  end

end
