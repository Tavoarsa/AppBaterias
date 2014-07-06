require 'test_helper'

class InventariosControllerTest < ActionController::TestCase
  setup do
    @inventario = inventarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario" do
    assert_difference('Inventario.count') do
      post :create, inventario: { cantidad: @inventario.cantidad, codigoProducto: @inventario.codigoProducto, codigoProveedor: @inventario.codigoProveedor, descripcion: @inventario.descripcion, impuesto: @inventario.impuesto, precioCosto: @inventario.precioCosto, precioVenta1: @inventario.precioVenta1, precioVenta2: @inventario.precioVenta2, utilidad: @inventario.utilidad }
    end

    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should show inventario" do
    get :show, id: @inventario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario
    assert_response :success
  end

  test "should update inventario" do
    patch :update, id: @inventario, inventario: { cantidad: @inventario.cantidad, codigoProducto: @inventario.codigoProducto, codigoProveedor: @inventario.codigoProveedor, descripcion: @inventario.descripcion, impuesto: @inventario.impuesto, precioCosto: @inventario.precioCosto, precioVenta1: @inventario.precioVenta1, precioVenta2: @inventario.precioVenta2, utilidad: @inventario.utilidad }
    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should destroy inventario" do
    assert_difference('Inventario.count', -1) do
      delete :destroy, id: @inventario
    end

    assert_redirected_to inventarios_path
  end
end
