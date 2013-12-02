require 'test_helper'

class HaircutsControllerTest < ActionController::TestCase
  setup do
    @haircut = haircuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircut" do
    assert_difference('Haircut.count') do
      post :create, haircut: { barber_id: @haircut.barber_id, like_count: @haircut.like_count, title: @haircut.title, view_count: @haircut.view_count }
    end

    assert_redirected_to haircut_path(assigns(:haircut))
  end

  test "should show haircut" do
    get :show, id: @haircut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haircut
    assert_response :success
  end

  test "should update haircut" do
    patch :update, id: @haircut, haircut: { barber_id: @haircut.barber_id, like_count: @haircut.like_count, title: @haircut.title, view_count: @haircut.view_count }
    assert_redirected_to haircut_path(assigns(:haircut))
  end

  test "should destroy haircut" do
    assert_difference('Haircut.count', -1) do
      delete :destroy, id: @haircut
    end

    assert_redirected_to haircuts_path
  end
end
