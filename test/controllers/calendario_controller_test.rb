require 'test_helper'

class CalendarioControllerTest < ActionDispatch::IntegrationTest
  test "should get calendario" do
    get calendario_calendario_url
    assert_response :success
  end

end
