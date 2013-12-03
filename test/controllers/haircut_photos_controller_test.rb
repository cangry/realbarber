require 'test_helper'

class HaircutPhotosControllerTest < ActionController::TestCase
  setup do
    @haircut_photo = haircut_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircut_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircut_photo" do
    assert_difference('HaircutPhoto.count') do
      post :create, haircut_photo: { haircut_id: @haircut_photo.haircut_id, is_default: @haircut_photo.is_default }
    end

    assert_redirected_to haircut_photo_path(assigns(:haircut_photo))
  end

  test "should show haircut_photo" do
    get :show, id: @haircut_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haircut_photo
    assert_response :success
  end

  test "should update haircut_photo" do
    patch :update, id: @haircut_photo, haircut_photo: { haircut_id: @haircut_photo.haircut_id, is_default: @haircut_photo.is_default }
    assert_redirected_to haircut_photo_path(assigns(:haircut_photo))
  end

  test "should destroy haircut_photo" do
    assert_difference('HaircutPhoto.count', -1) do
      delete :destroy, id: @haircut_photo
    end

    assert_redirected_to haircut_photos_path
  end
end
