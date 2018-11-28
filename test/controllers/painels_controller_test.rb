require 'test_helper'

class PainelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @painel = painels(:one)
  end

  test "should get index" do
    get painels_url
    assert_response :success
  end

  test "should get new" do
    get new_painel_url
    assert_response :success
  end

  test "should create painel" do
    assert_difference('Painel.count') do
      post painels_url, params: { painel: { painel: @painel.painel } }
    end

    assert_redirected_to painel_url(Painel.last)
  end

  test "should show painel" do
    get painel_url(@painel)
    assert_response :success
  end

  test "should get edit" do
    get edit_painel_url(@painel)
    assert_response :success
  end

  test "should update painel" do
    patch painel_url(@painel), params: { painel: { painel: @painel.painel } }
    assert_redirected_to painel_url(@painel)
  end

  test "should destroy painel" do
    assert_difference('Painel.count', -1) do
      delete painel_url(@painel)
    end

    assert_redirected_to painels_url
  end
end
