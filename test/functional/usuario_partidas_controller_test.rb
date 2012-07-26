require 'test_helper'

class UsuarioPartidasControllerTest < ActionController::TestCase
  setup do
    @usuario_partida = usuario_partidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_partidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_partida" do
    assert_difference('UsuarioPartida.count') do
      post :create, usuario_partida: { partida_id: @usuario_partida.partida_id, usuario_id: @usuario_partida.usuario_id }
    end

    assert_redirected_to usuario_partida_path(assigns(:usuario_partida))
  end

  test "should show usuario_partida" do
    get :show, id: @usuario_partida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_partida
    assert_response :success
  end

  test "should update usuario_partida" do
    put :update, id: @usuario_partida, usuario_partida: { partida_id: @usuario_partida.partida_id, usuario_id: @usuario_partida.usuario_id }
    assert_redirected_to usuario_partida_path(assigns(:usuario_partida))
  end

  test "should destroy usuario_partida" do
    assert_difference('UsuarioPartida.count', -1) do
      delete :destroy, id: @usuario_partida
    end

    assert_redirected_to usuario_partidas_path
  end
end
