require 'test_helper'

class CronogramaControllerTest < ActionDispatch::IntegrationTest
  test "should get cronograma" do
    get cronograma_cronograma_url
    assert_response :success
  end

end
