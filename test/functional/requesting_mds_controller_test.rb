require 'test_helper'

class RequestingMdsControllerTest < ActionController::TestCase
  setup do
    @requesting_md = requesting_mds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requesting_mds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requesting_md" do
    assert_difference('RequestingMd.count') do
      post :create, requesting_md: { name: @requesting_md.name }
    end

    assert_redirected_to requesting_md_path(assigns(:requesting_md))
  end

  test "should show requesting_md" do
    get :show, id: @requesting_md
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requesting_md
    assert_response :success
  end

  test "should update requesting_md" do
    put :update, id: @requesting_md, requesting_md: { name: @requesting_md.name }
    assert_redirected_to requesting_md_path(assigns(:requesting_md))
  end

  test "should destroy requesting_md" do
    assert_difference('RequestingMd.count', -1) do
      delete :destroy, id: @requesting_md
    end

    assert_redirected_to requesting_mds_path
  end
end
