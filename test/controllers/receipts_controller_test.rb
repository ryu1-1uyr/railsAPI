require 'test_helper'

class ReceiptsControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get receipts_get_url
    assert_response :success
  end

end
