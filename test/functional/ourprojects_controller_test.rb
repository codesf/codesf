require 'test_helper'

class OurprojectsControllerTest < ActionController::TestCase
  setup do
    @ourproject = ourprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ourprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ourproject" do
    assert_difference('Ourproject.count') do
      post :create, ourproject: @ourproject.attributes
    end

    assert_redirected_to ourproject_path(assigns(:ourproject))
  end

  test "should show ourproject" do
    get :show, id: @ourproject.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ourproject.to_param
    assert_response :success
  end

  test "should update ourproject" do
    put :update, id: @ourproject.to_param, ourproject: @ourproject.attributes
    assert_redirected_to ourproject_path(assigns(:ourproject))
  end

  test "should destroy ourproject" do
    assert_difference('Ourproject.count', -1) do
      delete :destroy, id: @ourproject.to_param
    end

    assert_redirected_to ourprojects_path
  end
end
