require 'test_helper'

class ChamadoControllerTest < ActionDispatch::IntegrationTest
  test "should get chamado" do
    get chamado_chamado_url
    assert_response :success
  end

end
