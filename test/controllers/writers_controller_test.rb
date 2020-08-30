require 'test_helper'

class WritersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get writers_edit_url
    assert_response :success
  end

  test "should get show" do
    get writers_show_url
    assert_response :success
  end

end
