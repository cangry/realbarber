require 'test_helper'

class BarberTypesControllerTest < ActionController::TestCase
  setup do
    @barber_type = barber_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barber_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barber_type" do
    assert_difference('BarberType.count') do
      post :create, barber_type: { barber_id: @barber_type.barber_id, type_id: @barber_type.type_id }
    end

    assert_redirected_to barber_type_path(assigns(:barber_type))
  end

  test "should show barber_type" do
    get :show, id: @barber_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barber_type
    assert_response :success
  end

  test "should update barber_type" do
    patch :update, id: @barber_type, barber_type: { barber_id: @barber_type.barber_id, type_id: @barber_type.type_id }
    assert_redirected_to barber_type_path(assigns(:barber_type))
  end

  test "should destroy barber_type" do
    assert_difference('BarberType.count', -1) do
      delete :destroy, id: @barber_type
    end

    assert_redirected_to barber_types_path
  end
end
