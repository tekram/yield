require 'test_helper'

class RadiologistsControllerTest < ActionController::TestCase
  setup do
    @radiologist = radiologists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radiologists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radiologist" do
    assert_difference('Radiologist.count') do
      post :create, radiologist: { name: @radiologist.name }
    end

    assert_redirected_to radiologist_path(assigns(:radiologist))
  end

  test "should show radiologist" do
    get :show, id: @radiologist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @radiologist
    assert_response :success
  end

  test "should update radiologist" do
    put :update, id: @radiologist, radiologist: { name: @radiologist.name }
    assert_redirected_to radiologist_path(assigns(:radiologist))
  end

  test "should destroy radiologist" do
    assert_difference('Radiologist.count', -1) do
      delete :destroy, id: @radiologist
    end

    assert_redirected_to radiologists_path
  end
end
