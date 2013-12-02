require 'test_helper'

class HaircutPicturesControllerTest < ActionController::TestCase
  setup do
    @haircut_picture = haircut_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircut_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircut_picture" do
    assert_difference('HaircutPicture.count') do
      post :create, haircut_picture: { haircut_id: @haircut_picture.haircut_id, url: @haircut_picture.url }
    end

    assert_redirected_to haircut_picture_path(assigns(:haircut_picture))
  end

  test "should show haircut_picture" do
    get :show, id: @haircut_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haircut_picture
    assert_response :success
  end

  test "should update haircut_picture" do
    patch :update, id: @haircut_picture, haircut_picture: { haircut_id: @haircut_picture.haircut_id, url: @haircut_picture.url }
    assert_redirected_to haircut_picture_path(assigns(:haircut_picture))
  end

  test "should destroy haircut_picture" do
    assert_difference('HaircutPicture.count', -1) do
      delete :destroy, id: @haircut_picture
    end

    assert_redirected_to haircut_pictures_path
  end
end
