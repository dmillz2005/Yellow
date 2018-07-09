require 'test_helper'

class YellowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yellow_index_url
    assert_response :success
  end

end
