require 'test_helper'

class MakeateamsControllerTest < ActionController::TestCase
  setup do
    @makeateam = makeateams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makeateams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create makeateam" do
    assert_difference('Makeateam.count') do
      post :create, makeateam: @makeateam.attributes
    end

    assert_redirected_to makeateam_path(assigns(:makeateam))
  end

  test "should show makeateam" do
    get :show, id: @makeateam.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @makeateam.to_param
    assert_response :success
  end

  test "should update makeateam" do
    put :update, id: @makeateam.to_param, makeateam: @makeateam.attributes
    assert_redirected_to makeateam_path(assigns(:makeateam))
  end

  test "should destroy makeateam" do
    assert_difference('Makeateam.count', -1) do
      delete :destroy, id: @makeateam.to_param
    end

    assert_redirected_to makeateams_path
  end
end
