require 'test_helper'

class CaracteristicaCartaControllerTest < ActionController::TestCase
  setup do
    @caracteristica_cartum = caracteristica_carta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caracteristica_carta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caracteristica_cartum" do
    assert_difference('CaracteristicaCartum.count') do
      post :create, caracteristica_cartum: { caracterisitca_id: @caracteristica_cartum.caracterisitca_id, carta_id: @caracteristica_cartum.carta_id, valor: @caracteristica_cartum.valor }
    end

    assert_redirected_to caracteristica_cartum_path(assigns(:caracteristica_cartum))
  end

  test "should show caracteristica_cartum" do
    get :show, id: @caracteristica_cartum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caracteristica_cartum
    assert_response :success
  end

  test "should update caracteristica_cartum" do
    put :update, id: @caracteristica_cartum, caracteristica_cartum: { caracterisitca_id: @caracteristica_cartum.caracterisitca_id, carta_id: @caracteristica_cartum.carta_id, valor: @caracteristica_cartum.valor }
    assert_redirected_to caracteristica_cartum_path(assigns(:caracteristica_cartum))
  end

  test "should destroy caracteristica_cartum" do
    assert_difference('CaracteristicaCartum.count', -1) do
      delete :destroy, id: @caracteristica_cartum
    end

    assert_redirected_to caracteristica_carta_path
  end
end
