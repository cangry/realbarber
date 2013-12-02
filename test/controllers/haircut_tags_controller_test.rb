require 'test_helper'

class HaircutTagsControllerTest < ActionController::TestCase
  setup do
    @haircut_tag = haircut_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haircut_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haircut_tag" do
    assert_difference('HaircutTag.count') do
      post :create, haircut_tag: { haircut_id: @haircut_tag.haircut_id, tag_id: @haircut_tag.tag_id }
    end

    assert_redirected_to haircut_tag_path(assigns(:haircut_tag))
  end

  test "should show haircut_tag" do
    get :show, id: @haircut_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haircut_tag
    assert_response :success
  end

  test "should update haircut_tag" do
    patch :update, id: @haircut_tag, haircut_tag: { haircut_id: @haircut_tag.haircut_id, tag_id: @haircut_tag.tag_id }
    assert_redirected_to haircut_tag_path(assigns(:haircut_tag))
  end

  test "should destroy haircut_tag" do
    assert_difference('HaircutTag.count', -1) do
      delete :destroy, id: @haircut_tag
    end

    assert_redirected_to haircut_tags_path
  end
end
