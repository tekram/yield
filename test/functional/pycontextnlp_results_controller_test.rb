require 'test_helper'

class PycontextnlpResultsControllerTest < ActionController::TestCase
  setup do
    @pycontextnlp_result = pycontextnlp_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pycontextnlp_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pycontextnlp_result" do
    assert_difference('PycontextnlpResult.count') do
      post :create, pycontextnlp_result: { classification: @pycontextnlp_result.classification, most_positive_target: @pycontextnlp_result.most_positive_target, report_number: @pycontextnlp_result.report_number, run_args: @pycontextnlp_result.run_args, schema: @pycontextnlp_result.schema, target_category: @pycontextnlp_result.target_category }
    end

    assert_redirected_to pycontextnlp_result_path(assigns(:pycontextnlp_result))
  end

  test "should show pycontextnlp_result" do
    get :show, id: @pycontextnlp_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pycontextnlp_result
    assert_response :success
  end

  test "should update pycontextnlp_result" do
    put :update, id: @pycontextnlp_result, pycontextnlp_result: { classification: @pycontextnlp_result.classification, most_positive_target: @pycontextnlp_result.most_positive_target, report_number: @pycontextnlp_result.report_number, run_args: @pycontextnlp_result.run_args, schema: @pycontextnlp_result.schema, target_category: @pycontextnlp_result.target_category }
    assert_redirected_to pycontextnlp_result_path(assigns(:pycontextnlp_result))
  end

  test "should destroy pycontextnlp_result" do
    assert_difference('PycontextnlpResult.count', -1) do
      delete :destroy, id: @pycontextnlp_result
    end

    assert_redirected_to pycontextnlp_results_path
  end
end
