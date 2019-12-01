require 'test_helper'

class VereadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vereador = vereadors(:one)
  end

  test "should get index" do
    get vereadors_url
    assert_response :success
  end

  test "should get new" do
    get new_vereador_url
    assert_response :success
  end

  test "should create vereador" do
    assert_difference('Vereador.count') do
      post vereadors_url, params: { vereador: { ativo: @vereador.ativo, nome_civil: @vereador.nome_civil, nome_parlamentar: @vereador.nome_parlamentar, partido: @vereador.partido } }
    end

    assert_redirected_to vereador_url(Vereador.last)
  end

  test "should show vereador" do
    get vereador_url(@vereador)
    assert_response :success
  end

  test "should get edit" do
    get edit_vereador_url(@vereador)
    assert_response :success
  end

  test "should update vereador" do
    patch vereador_url(@vereador), params: { vereador: { ativo: @vereador.ativo, nome_civil: @vereador.nome_civil, nome_parlamentar: @vereador.nome_parlamentar, partido: @vereador.partido } }
    assert_redirected_to vereador_url(@vereador)
  end

  test "should destroy vereador" do
    assert_difference('Vereador.count', -1) do
      delete vereador_url(@vereador)
    end

    assert_redirected_to vereadors_url
  end
end
