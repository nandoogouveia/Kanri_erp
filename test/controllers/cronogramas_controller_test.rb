require 'test_helper'

class CronogramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cronograma = cronogramas(:one)
  end

  test "should get index" do
    get cronogramas_url
    assert_response :success
  end

  test "should get new" do
    get new_cronograma_url
    assert_response :success
  end

  test "should create cronograma" do
    assert_difference('Cronograma.count') do
      post cronogramas_url, params: { cronograma: { calendario: @cronograma.calendario } }
    end

    assert_redirected_to cronograma_url(Cronograma.last)
  end

  test "should show cronograma" do
    get cronograma_url(@cronograma)
    assert_response :success
  end

  test "should get edit" do
    get edit_cronograma_url(@cronograma)
    assert_response :success
  end

  test "should update cronograma" do
    patch cronograma_url(@cronograma), params: { cronograma: { calendario: @cronograma.calendario } }
    assert_redirected_to cronograma_url(@cronograma)
  end

  test "should destroy cronograma" do
    assert_difference('Cronograma.count', -1) do
      delete cronograma_url(@cronograma)
    end

    assert_redirected_to cronogramas_url
  end
end
