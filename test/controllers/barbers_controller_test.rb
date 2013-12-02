require 'test_helper'

class BarbersControllerTest < ActionController::TestCase
  setup do
    @barber = barbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barber" do
    assert_difference('Barber.count') do
      post :create, barber: { address1: @barber.address1, address2: @barber.address2, avatar_url: @barber.avatar_url, bio: @barber.bio, city: @barber.city, country: @barber.country, name: @barber.name, state: @barber.state, status: @barber.status, zip: @barber.zip }
    end

    assert_redirected_to barber_path(assigns(:barber))
  end

  test "should show barber" do
    get :show, id: @barber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barber
    assert_response :success
  end

  test "should update barber" do
    patch :update, id: @barber, barber: { address1: @barber.address1, address2: @barber.address2, avatar_url: @barber.avatar_url, bio: @barber.bio, city: @barber.city, country: @barber.country, name: @barber.name, state: @barber.state, status: @barber.status, zip: @barber.zip }
    assert_redirected_to barber_path(assigns(:barber))
  end

  test "should destroy barber" do
    assert_difference('Barber.count', -1) do
      delete :destroy, id: @barber
    end

    assert_redirected_to barbers_path
  end
end
