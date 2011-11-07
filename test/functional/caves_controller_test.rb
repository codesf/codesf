require 'test_helper'

class CavesControllerTest < ActionController::TestCase
  setup do
    @cafe = caves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cafe.count') do
      post :create, :cafe => @cafe.attributes
    end

    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should show cafe" do
    get :show, :id => @cafe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cafe.to_param
    assert_response :success
  end

  test "should update cafe" do
    put :update, :id => @cafe.to_param, :cafe => @cafe.attributes
    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should destroy cafe" do
    assert_difference('Cafe.count', -1) do
      delete :destroy, :id => @cafe.to_param
    end

    assert_redirected_to caves_path
  end
end
