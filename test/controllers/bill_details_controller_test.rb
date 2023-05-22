require 'test_helper'

class BillDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bill_details_new_url
    assert_response :success
  end

end
