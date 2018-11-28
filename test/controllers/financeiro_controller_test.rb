require 'test_helper'

class FinanceiroControllerTest < ActionDispatch::IntegrationTest
  test "should get financeiro" do
    get financeiro_financeiro_url
    assert_response :success
  end

end
