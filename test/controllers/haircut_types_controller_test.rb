require 'test_helper'

class HaircutTypesControllerTest < ActionController::TestCase
  setup do
    @haircut_type = haircut_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircut_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircut_type" do
    assert_difference('HaircutType.count') do
      post :create, haircut_type: { title: @haircut_type.title }
    end

    assert_redirected_to haircut_type_path(assigns(:haircut_type))
  end

  test "should show haircut_type" do
    get :show, id: @haircut_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haircut_type
    assert_response :success
  end

  test "should update haircut_type" do
    patch :update, id: @haircut_type, haircut_type: { title: @haircut_type.title }
    assert_redirected_to haircut_type_path(assigns(:haircut_type))
  end

  test "should destroy haircut_type" do
    assert_difference('HaircutType.count', -1) do
      delete :destroy, id: @haircut_type
    end

    assert_redirected_to haircut_types_path
  end
end
