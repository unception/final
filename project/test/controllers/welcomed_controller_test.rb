require 'test_helper'

class WelcomedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcomed_index_url
    assert_response :success
  end

end
