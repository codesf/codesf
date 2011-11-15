require 'test_helper'

class HackerspacesControllerTest < ActionController::TestCase
  setup do
    @hackerspace = hackerspaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hackerspaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hackerspace" do
    assert_difference('Hackerspace.count') do
      post :create, hackerspace: @hackerspace.attributes
    end

    assert_redirected_to hackerspace_path(assigns(:hackerspace))
  end

  test "should show hackerspace" do
    get :show, id: @hackerspace.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hackerspace.to_param
    assert_response :success
  end

  test "should update hackerspace" do
    put :update, id: @hackerspace.to_param, hackerspace: @hackerspace.attributes
    assert_redirected_to hackerspace_path(assigns(:hackerspace))
  end

  test "should destroy hackerspace" do
    assert_difference('Hackerspace.count', -1) do
      delete :destroy, id: @hackerspace.to_param
    end

    assert_redirected_to hackerspaces_path
  end
end
