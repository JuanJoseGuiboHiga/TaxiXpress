require 'test_helper'

class Servicios1TaxistaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
