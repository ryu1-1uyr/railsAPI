require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get shops_get_url
    assert_response :success
  end

end
