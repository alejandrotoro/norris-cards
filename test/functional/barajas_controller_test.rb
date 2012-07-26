require 'test_helper'

class BarajasControllerTest < ActionController::TestCase
  setup do
    @baraja = barajas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barajas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baraja" do
    assert_difference('Baraja.count') do
      post :create, baraja: { edicion: @baraja.edicion, imagen: @baraja.imagen, nombre: @baraja.nombre }
    end

    assert_redirected_to baraja_path(assigns(:baraja))
  end

  test "should show baraja" do
    get :show, id: @baraja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baraja
    assert_response :success
  end

  test "should update baraja" do
    put :update, id: @baraja, baraja: { edicion: @baraja.edicion, imagen: @baraja.imagen, nombre: @baraja.nombre }
    assert_redirected_to baraja_path(assigns(:baraja))
  end

  test "should destroy baraja" do
    assert_difference('Baraja.count', -1) do
      delete :destroy, id: @baraja
    end

    assert_redirected_to barajas_path
  end
end
