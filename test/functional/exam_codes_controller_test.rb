require 'test_helper'

class ExamCodesControllerTest < ActionController::TestCase
  setup do
    @exam_code = exam_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_code" do
    assert_difference('ExamCode.count') do
      post :create, exam_code: { name: @exam_code.name }
    end

    assert_redirected_to exam_code_path(assigns(:exam_code))
  end

  test "should show exam_code" do
    get :show, id: @exam_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_code
    assert_response :success
  end

  test "should update exam_code" do
    put :update, id: @exam_code, exam_code: { name: @exam_code.name }
    assert_redirected_to exam_code_path(assigns(:exam_code))
  end

  test "should destroy exam_code" do
    assert_difference('ExamCode.count', -1) do
      delete :destroy, id: @exam_code
    end

    assert_redirected_to exam_codes_path
  end
end
