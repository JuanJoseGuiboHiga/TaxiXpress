require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get servicio" do
    get :servicio
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get testimonios" do
    get :testimonios
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
