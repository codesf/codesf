require 'test_helper'

class NonprofitsControllerTest < ActionController::TestCase
  setup do
    @nonprofit = nonprofits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nonprofits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nonprofit" do
    assert_difference('Nonprofit.count') do
      post :create, nonprofit: @nonprofit.attributes
    end

    assert_redirected_to nonprofit_path(assigns(:nonprofit))
  end

  test "should show nonprofit" do
    get :show, id: @nonprofit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nonprofit.to_param
    assert_response :success
  end

  test "should update nonprofit" do
    put :update, id: @nonprofit.to_param, nonprofit: @nonprofit.attributes
    assert_redirected_to nonprofit_path(assigns(:nonprofit))
  end

  test "should destroy nonprofit" do
    assert_difference('Nonprofit.count', -1) do
      delete :destroy, id: @nonprofit.to_param
    end

    assert_redirected_to nonprofits_path
  end
end
