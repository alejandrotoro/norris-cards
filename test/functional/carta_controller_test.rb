require 'test_helper'

class CartaControllerTest < ActionController::TestCase
  setup do
    @cartum = carta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartum" do
    assert_difference('Cartum.count') do
      post :create, cartum: { colores: @cartum.colores, id_baraja: @cartum.id_baraja, imagen: @cartum.imagen, letras: @cartum.letras, nombre: @cartum.nombre, numeroletra: @cartum.numeroletra }
    end

    assert_redirected_to cartum_path(assigns(:cartum))
  end

  test "should show cartum" do
    get :show, id: @cartum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartum
    assert_response :success
  end

  test "should update cartum" do
    put :update, id: @cartum, cartum: { colores: @cartum.colores, id_baraja: @cartum.id_baraja, imagen: @cartum.imagen, letras: @cartum.letras, nombre: @cartum.nombre, numeroletra: @cartum.numeroletra }
    assert_redirected_to cartum_path(assigns(:cartum))
  end

  test "should destroy cartum" do
    assert_difference('Cartum.count', -1) do
      delete :destroy, id: @cartum
    end

    assert_redirected_to carta_path
  end
end
