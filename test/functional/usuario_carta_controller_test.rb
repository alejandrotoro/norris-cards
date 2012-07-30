require 'test_helper'

class UsuarioCartaControllerTest < ActionController::TestCase
  setup do
    @usuario_cartum = usuario_carta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_carta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_cartum" do
    assert_difference('UsuarioCartum.count') do
      post :create, usuario_cartum: { carta_id: @usuario_cartum.carta_id, orden: @usuario_cartum.orden, partida_id: @usuario_cartum.partida_id, usuario_id: @usuario_cartum.usuario_id }
    end

    assert_redirected_to usuario_cartum_path(assigns(:usuario_cartum))
  end

  test "should show usuario_cartum" do
    get :show, id: @usuario_cartum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_cartum
    assert_response :success
  end

  test "should update usuario_cartum" do
    put :update, id: @usuario_cartum, usuario_cartum: { carta_id: @usuario_cartum.carta_id, orden: @usuario_cartum.orden, partida_id: @usuario_cartum.partida_id, usuario_id: @usuario_cartum.usuario_id }
    assert_redirected_to usuario_cartum_path(assigns(:usuario_cartum))
  end

  test "should destroy usuario_cartum" do
    assert_difference('UsuarioCartum.count', -1) do
      delete :destroy, id: @usuario_cartum
    end

    assert_redirected_to usuario_carta_path
  end
end
